#!/bin/bash

# Prompt the user for the directory path
echo "Enter the directory path:"
read directory

# Check if the directory exists
if [ ! -d "$directory" ]; then
  echo "Error: $directory is not a valid directory"
  exit 1
fi

# Find all files in the directory
for file in "$directory"/*; do
  if [ -f "$file" ]; then
    echo "$file"
  fi
done
