#!/bin/bash

# check that both arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: ./randomsample.sh x fileinput"
  exit 1
fi

x=$((1 + RANDOM % 99))
fileinput=$2

# calculate the number of lines to sample
total_lines=$(wc -l < "$fileinput")
sample_size=$((total_lines * x / 100))

# Loop through the first num_sample lines and print each one
count=0
while read -r line; do
    echo "$line"
    count=$((count+1))
    if [ $count -eq $sample_size ]; then
        break
    fi
done < "$fileinput"

