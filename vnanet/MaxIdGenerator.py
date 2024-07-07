import pandas as pd
import aiohttp
import asyncio
import csv

base_url = "https://diemthi.vnanet.vn/Home/SearchBySobaodanh"
max_candidate_ids = {}


async def fetch_data(session, url, province_code):
    async with session.get(url) as response:
        if response.status == 200:
            data = await response.json()
            if data:
                max_candidate_ids[province_code] = url.split('=')[1][:8]
        return None


async def main():
    province_codes = pd.read_csv('sbd_findmax.csv')['province_code'].tolist()

    async with aiohttp.ClientSession() as session:
        tasks = []
        for c in province_codes:
            for a in range(1, 99999):
                sbd = f"{c:02}{a:06}"
                url = f"{base_url}?code={sbd}&nam=2018"
                task = asyncio.ensure_future(fetch_data(session, url, c))
                tasks.append(task)
                if len(tasks) >= 100:
                    await asyncio.gather(*tasks)
                    tasks = []

        if tasks:
            await asyncio.gather(*tasks)

    with open('max_sbd_2018.csv', 'w', newline='') as csvfile:
        fieldnames = ['province_code', 'candidate_id']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

        writer.writeheader()
        for province_code, sbd in max_candidate_ids.items():
            writer.writerow(
                {'province_code': province_code, 'candidate_id': sbd})

if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    loop.run_until_complete(main())
    # Print the accumulated max_candidate_ids after completion
    print(max_candidate_ids)
