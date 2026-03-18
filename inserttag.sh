#!/bin/bash

# Define the source file containing the analytics code
TAG_FILE="analyticstag.txt"

# Verify the tag file exists before proceeding
if [[ ! -f "$TAG_FILE" ]]; then
    echo "Error: $TAG_FILE not found in the current directory."
    exit 1
fi

# Iterate through all .html files in the folder
for file in *.html; do
    # Ensure the file exists and is a regular file
    [[ -f "$file" ]] || continue
    
    # Use sed to find <head> and append the contents of TAG_FILE after it
    # The 'r' command reads the file immediately after the match
    sed -i "/<head>/r $TAG_FILE" "$file"
    
    echo "Successfully updated: $file"
done
