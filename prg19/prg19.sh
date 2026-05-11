#!/bin/bash

# Step 1: Create two files
echo "Enter content for first file:"
read content1
echo "$content1" > file1.txt

echo "Enter content for second file:"
read content2
echo "$content2" > file2.txt

echo "Files created: file1.txt and file2.txt"

# Step 2: Compare the files
if cmp -s file1.txt file2.txt; then
    echo "Files are identical. Deleting file2.txt"
    rm file2.txt
else
    echo "Files are different. Both files are kept."
fi
