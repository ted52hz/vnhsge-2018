import pandas as pd
import os

# Directory containing the CSV files to merge
directory = './Data/'

# Get a list of all CSV files in the directory
csv_files = [file for file in os.listdir(directory) if file.endswith('.csv')]

# Initialize an empty DataFrame to store merged data
merged_data = pd.DataFrame()

# Loop through each CSV file and merge its data into the merged_data DataFrame
for file in csv_files:
    file_path = os.path.join(directory, file)
    df = pd.read_csv(file_path)
    merged_data = pd.concat([merged_data, df])

# Write the merged data to a new CSV file
merged_file_path = './VNHSGE-2018.csv'
merged_data.to_csv(merged_file_path, index=False)
