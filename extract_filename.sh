#!/bin/bash

output_file="filelist.txt"

> "$output_file"

for f in *; do
    if [ -f "$f" ]; then
        echo "$f" >> "$output_file"
    fi
done


# or
# ls -p | grep -v / > filelist.txt
# or 
# find . -maxdepth 1 -type f -printf "%f\n" > filelist.txt
