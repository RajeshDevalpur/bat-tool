#!/bin/bash

filename="$1"
line_number=0
last_line=""

# First, read all lines and store them in an array
mapfile -t lines < "$filename"
total_lines=${#lines[@]}

# Loop through the array and print only 1st, 2nd and last line
for i in "${!lines[@]}"
do
    line_number=$((i + 1))
    if [[ $line_number -eq 1 || $line_number -eq 2 || $line_number -eq $total_lines ]]
    then
        line="${lines[$i]}"
        char_count=${#line}
        echo "Line $line_number: \"$line\" ($char_count characters)"
    fi
done



#!/bin/bash

filename=$1         # Get the filename from script argument
totallines=0        # Initialize line count

while read -r line
do
    ((totallines++))                         # Increment line counter
    char_count=${#line}                      # Get character count using Bash string length
    echo "Line $totallines: \"$line\" ($char_count characters)"
done < "$filename"






































