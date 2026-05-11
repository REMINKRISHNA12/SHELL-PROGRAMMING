#!/bin/bash

# Directory to display (current directory by default)
dir="${1:-.}"

# Check if directory exists
if [ ! -d "$dir" ]; then
    echo "Directory $dir does not exist."
    exit 1
fi

# Print header (Windows style)
printf "%-20s %-10s %-20s\n" "File Name" "Size(Bytes)" "Last Modified"
echo "--------------------------------------------------------------"

# Loop through ordinary files in the directory
for file in "$dir"/*; do
    if [ -f "$file" ]; then
        name=$(basename "$file")
        size=$(stat -c%s "$file")        # File size in bytes
        mtime=$(stat -c"%y" "$file")    # Last modified date/time
        printf "%-20s %-10s %-20s\n" "$name" "$size" "$mtime"
    fi
done
