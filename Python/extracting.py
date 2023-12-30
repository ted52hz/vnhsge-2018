import aiohttp
import asyncio
import sys
import csv
import time
import os
import pandas as pd


def get_last_five_chars(candidate_id):
    return int(str(candidate_id)[-5:])


def read_csv_file(file_path):
    return pd.read_csv(file_path)


def extract_checkpoint(df):  # Lấy giá trị tỉnh và số báo danh cuối cùng
    last_candidate_id = df['candidate_id'].iloc[-1]
    checkpoint = f"{last_candidate_id:08d}"
    province_cb = int(str(checkpoint)[:2])
    candidate_cb = int(str(checkpoint)[-5:])
    return province_cb, candidate_cb


def get_start_values(df):
    start_values = {}
    for province_code in df['province_code'].unique():
        start_values[province_code] = 1
    return start_values


def get_end_values(df, province_cb):
    end_values = {}
    for province_code in df['province_code'].unique():
        tmp = get_last_five_chars(
            df[df['province_code'] == province_code]['candidate_id'].to_string(index=False))
        end_values[province_code] = tmp
    return end_values


def generate_values(file_path_1, file_path_2):
    df = read_csv_file(file_path_1)  # max_sbd.csv
    df_2 = read_csv_file(file_path_2)  # 2018.csv

    try:
        province_cb, candidate_cb = extract_checkpoint(df_2)
    # Nếu chạy lần đâu sẽ ko có checkpoint
    except (FileNotFoundError, IndexError):
        province_cb, candidate_cb = 1, 1

    start_values = get_start_values(df)
    end_values = get_end_values(df, province_cb)

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


if sys.version_info[0] == 3 and sys.version_info[1] >= 8 and sys.platform.startswith('win'):
    asyncio.set_event_loop_policy(asyncio.WindowsSelectorEventLoopPolicy())


async def fetch_data(session, url):
    async with session.get(url) as response:
        if response.status == 200:
            data = await response.json()
            if data:  # Check if the response data is not empty
                return data
            else:
                return None
        else:
            return None


async def main():
    base_api_url = "https://diemthi.vnanet.vn/Home/SearchBySobaodanh?code="
    year = "2018"
    filename = "2018.csv"
    file_exists = os.path.exists(filename)
    if file_exists:
        base_name, extension = os.path.splitext(filename)
        index = 1
        while file_exists:
            new_filename = f"{base_name}_{index}{extension}"
            file_exists = os.path.exists(new_filename)
            index += 1
        filename = new_filename
    # Open the CSV file with the updated filename
    csv_file = open(filename, "w", newline="", encoding="utf-8")
    csv_writer = csv.writer(csv_file)
    csv_writer.writerow(["province_code",
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
                         ])
    async with aiohttp.ClientSession() as session:
        for i in sobaodanh:
            api_url = f"{base_api_url}{i}&nam={year}"
            result = await fetch_data(session, api_url)
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

if __name__ == "__main__":
    sobaodanh = generate_values('max_sbd.csv', '2018_1.csv')
    start_time = time.time()
    asyncio.run(main())
    print("--- %s seconds ---" % (time.time() - start_time))
