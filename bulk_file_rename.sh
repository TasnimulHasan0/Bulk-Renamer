#!/bin/bash

# Ask the user for paths
read -p "Enter the folder path containing the files to rename: " folder_path
read -p "Enter the path to the text file with new names: " txt_file

# Check if both paths exist
if [ ! -d "$folder_path" ]; then
    echo "Error: Folder $folder_path does not exist."
    exit 1
fi

if [ ! -f "$txt_file" ]; then
    echo "Error: File $txt_file does not exist."
    exit 1
fi

# Read names from text file
mapfile -t names < "$txt_file"

# Get list of files in folder
files=("$folder_path"/*)

# Ensure the number of names matches the number of files
if [ ${#names[@]} -ne ${#files[@]} ]; then
    echo "Error: Number of names in text file does not match the number of files in the folder."
    exit 1
fi

# Rename files
for i in "${!files[@]}"; do
    old_file="${files[$i]}"
    new_name="${names[$i]}"
    extension="${old_file##*.}"
    new_file="$folder_path/$new_name.$extension"

    # Skip if the name is the same
    if [ "$old_file" == "$new_file" ]; then
        echo "Skipping: $old_file (new name is the same)"
        continue
    fi

    # Rename file
    mv "$old_file" "$new_file" || echo "Failed to rename: $old_file"
done

echo "Files renamed successfully!"

