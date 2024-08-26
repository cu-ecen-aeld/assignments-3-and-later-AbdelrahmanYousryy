#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 2 ]; then
    echo "Error: Two arguments are required."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

# Assign the arguments to variables
writefile=$1
writestr=$2

# Get the directory path from the full file path
dirpath=$(dirname "$writefile")

# Create the directory path if it doesn't exist
sudo mkdir -p "$dirpath"

# Check if the directory was successfully created
if [ $? -ne 0 ]; then
    echo "Error: Could not create the directory path '$dirpath'."
    exit 1
fi

# Write the text to the file (overwriting if it exists)
echo "$writestr" > "$writefile"

# Check if the file was successfully created
if [ $? -ne 0 ]; then
    echo "Error: Could not create or write to the file '$writefile'."
    exit 1
fi

echo "File '$writefile' created successfully with the content."
exit 0
