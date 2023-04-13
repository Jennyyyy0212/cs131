#!/bin/bash

# Define input and output file paths
input_file="winequality.csv"
train_file="a4/train/data.csv"
test_file="a4/test/data.csv"


# Calculate the number of rows to include in the train set (80% of total rows)
total_rows=$(wc -l < $input_file)
train_rows=$(echo "($total_rows - 1) * 0.8" | bc | awk '{print int($1)}')

# Copy the header row from the input file to both output files
head -n 1 $input_file > train/data.csv
head -n 1 $input_file > test/data.csv

# Select rows for train and test sets
head -n "$((train_rows + 1))" "$input_file" > train/data.csv
tail -n "$((total_rows - train_rows - 1 ))" "$input_file" >> test/data.csv

# Replace the semicolon separator with a comma in both output files
sed -i 's/;/,/g' train/data.csv
sed -i 's/;/,/g' test/data.csv

echo "Done splitting the dataset."
