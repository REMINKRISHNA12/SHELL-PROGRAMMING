#!/bin/bash

# Get the PID of the current shell
pid=$$

# Directory to rename files in (current directory by default)
dir="."

# Counter to avoid overwriting files if multiple exist
counter=1

# Loop through all ordinary files in the directory
for file in "$dir"/*; do
    if [ -f "$file" ]; then  # Check if it is a regular file
        # Get file extension if it has one
        ext="${file##*.}"
        # If the file has no extension, just use PID
        if [ "$file" = "$ext" ]; then
            mv "$file" "$dir/${pid}_$counter"
        else
            mv "$file" "$dir/${pid}_$counter.$ext"
        fi
        ((counter++))
    fi
done

echo "All ordinary files in $dir have been renamed with PID: $pid"
