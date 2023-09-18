#! /bin/bash

# Storing and downloading the CSV file
csv_file="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-LX0117EN-SkillsNetwork/labs/M3/L2/arrays_table.csv"
output_file="report.csv"
wget -O "$output_file" "$csv_file"

# Parse the table into arrays
IFS=',' # Set the delimiter
while read -r col0 col1 col2; do
  column_0+=("$col0")
  column_1+=("$col1")
  column_2+=("$col2")
done < "$output_file"

# Display the first column
echo "Displaying the first column"
echo "${column_0[@]}"

# Create a new array as the difference of columns 1 and 2
column_3=("column_3")
for ((i = 1; i < ${#column_1[@]}; i++)); do
  diff=$((column_2[i] - column_1[i]))
  column_3+=("$diff")
done
echo "${column_3[@]}"

# Combine the new array with the CSV file
echo "${column_3[0]}" > column_3.txt
for ((i = 1; i < ${#column_3[@]}; i++)); do
  echo "${column_3[i]}" >> column_3.txt
done
paste -d "," "$output_file" column_3.txt > final_report.csv
