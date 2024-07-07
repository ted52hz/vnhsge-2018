import aiohttp
import asyncio
import sys
import csv
import time
import os
import pandas as pd


class DataProcessor:
    def __init__(self, base_api_url, year, output_filename):
        self.base_api_url = base_api_url
        self.year = year
        self.output_filename = output_filename
        self.csv_header = [
            "province_code",
            "candidate_id",
            "Toan",
            "Van",
            "Anh",
            "Ly",
            "Hoa",
            "Sinh",
            "Dia",
            "Su",
            "GDCD"
        ]

    # Lấy 6 ký tự cuối của số báo danh và chuyển thành số nguyên
    def get_last_five_chars(self, candidate_id):
        return int(str(candidate_id)[-6:])

    def read_csv_file(self, file_path):
        return pd.read_csv(file_path)

    def extract_checkpoint(self, df):  # Lấy thông tin số báo danh của lần lấy trước
        try:
            last_candidate_id = df['candidate_id'].iloc[-1]
            checkpoint = f"{last_candidate_id:08d}"
            province_cb = int(str(checkpoint)[:2])
            candidate_cb = int(str(checkpoint)[-5:])
        except (KeyError, IndexError):
            # Default values if dataframe is empty or index errors occur
            province_cb, candidate_cb = 1, 1
        return province_cb, candidate_cb

    def generate_values(self, file_path_1, file_path_2):
        df_max_sbd = self.read_csv_file(file_path_1)  # max_sbd.csv
        df_latest_data = self.read_csv_file(file_path_2)  # 2018.csv

        province_cb, candidate_cb = self.extract_checkpoint(df_latest_data)

        start_values = self.get_start_values(df_max_sbd)
        end_values = self.get_end_values(df_max_sbd, province_cb)

        if candidate_cb:
            keys_to_remove = [key for key in start_values if key < province_cb]
            for key in keys_to_remove:
                del start_values[key]
                del end_values[key]
            start_values[province_cb] = candidate_cb + 1

        result_dict = []

        for province_id in start_values:
            start_value = start_values[province_id]
            end_value = end_values[province_id]

            for i in range(start_value, end_value + 1):
                result_dict.append(f"{province_id:02d}0{i:05d}")

        return result_dict

    def get_start_values(self, df):
        start_values = {}
        for province_code in df['province_code'].unique():
            start_values[province_code] = 1
        return start_values

    def get_end_values(self, df, province_cb):
        end_values = {}
        for province_code in df['province_code'].unique():
            try:
                tmp = self.get_last_five_chars(
                    df[df['province_code'] == province_code]['candidate_id'].iloc[-1])
            except (KeyError, IndexError):
                tmp = 1
            end_values[province_code] = tmp
        return end_values

    async def fetch_data(self, session, url):
        async with session.get(url) as response:
            if response.status == 200:
                data = await response.json()
                if data:  # Check if the response data is not empty
                    return data
                else:
                    return None
            else:
                return None

    async def process_data(self):
        async with aiohttp.ClientSession() as session:
            sobaodanh = self.generate_values(
                'max_sbd.csv', 'Data/' + self.get_latest_filename() + ".csv")
            csv_file = open(self.output_filename, "w",
                            newline="", encoding="utf-8")
            csv_writer = csv.writer(csv_file)
            csv_writer.writerow(self.csv_header)

            for i in sobaodanh:
                api_url = f"{self.base_api_url}{i}&nam={self.year}"
                result = await self.fetch_data(session, api_url)
                try:
                    entry = [
                        result['result'][0].get('CityCode', ''),
                        result['result'][0].get('Code', ''),
                        result['result'][0].get('Toan', ''),
                        result['result'][0].get('NguVan', ''),
                        result['result'][0].get('NgoaiNgu', ''),
                        result['result'][0].get('VatLi', ''),
                        result['result'][0].get('HoaHoc', ''),
                        result['result'][0].get('SinhHoc', ''),
                        result['result'][0].get('DiaLi', ''),
                        result['result'][0].get('LichSu', ''),
                        result['result'][0].get('GDCD', '')
                    ]
                    csv_writer.writerow(entry)
                except (IndexError, KeyError):
                    continue

            csv_file.close()

    def get_latest_filename(self):
        folder_names = [os.path.splitext(os.path.basename(file))[
            0] for file in os.listdir('./Data')]
        return folder_names[-1]


if __name__ == "__main__":
    base_api_url = "https://diemthi.vnanet.vn/Home/SearchBySobaodanh?code="
    year = "2018"
    output_filename = "Data/{year}.csv"
    file_exists = os.path.exists(output_filename)
    if file_exists:
        base_name, extension = os.path.splitext(output_filename)
        index = 1
        while file_exists:
            new_filename = f"{base_name}_{index}{extension}"
            file_exists = os.path.exists(new_filename)
            index += 1
        output_filename = new_filename

    data_processor = DataProcessor(base_api_url, year, output_filename)

    if sys.version_info[0] == 3 and sys.version_info[1] >= 8 and sys.platform.startswith('win'):
        asyncio.set_event_loop_policy(asyncio.WindowsSelectorEventLoopPolicy())

    start_time = time.time()
    asyncio.run(data_processor.process_data())
    print("--- %s seconds ---" % (time.time() - start_time))
