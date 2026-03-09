#!/bin/bash

# Check if exactly one argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

file="$1"

# Check if file exists
if [ ! -e "$file" ]; then
    echo "Error: File '$file' not found!"
    exit 1
fi

# Check if it is a regular file
if [ ! -f "$file" ]; then
    echo "Error: '$file' is not a regular file!"
    exit 1
fi

# Count lines, words, and characters
lines=$(wc -l < "$file")
words=$(wc -w < "$file")
chars=$(wc -m < "$file")

# Display results
echo "----------------------------"
echo "File: $file"
echo "Number of lines:      $lines"
echo "Number of words:      $words"
echo "Number of characters: $chars"
echo "----------------------------"i
