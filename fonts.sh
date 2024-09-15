#!/bin/bash

# Define the target directory
TARGET_DIR="$HOME/.local/share/fonts"

# Ensure the target directory exists
mkdir -p "$TARGET_DIR"

# Loop through all .zip files in the current directory
for zip_file in *.zip; do
  # Check if there are any .zip files
  if [[ -e "$zip_file" ]]; then
    # Extract the base name of the zip file (without extension)
    base_name=$(basename "$zip_file" .zip)
    
    # Create a directory with the base name in the target directory
    target_subdir="$TARGET_DIR/$base_name"
    mkdir -p "$target_subdir"
    
    # Copy the zip file to the target directory
    cp "$zip_file" "$target_subdir/"
    
    # Unzip the file into its respective directory
    unzip "$target_subdir/$zip_file" -d "$target_subdir/"
    
    # Remove the zip file after extraction (optional)
    rm "$target_subdir/$zip_file"
  else
    echo "No .zip files found in the current directory."
  fi
done

