#!/bin/bash

# Get the directory path of the script
SRC_DIR="$(cd "$(dirname "$0")" && pwd)"

# Specify the file to be installed
file_path="$SRC_DIR/Catppuccin Sky-Dark.colorscheme"

# Specify the destination directory
destination_dir="$HOME/.local/share/konsole/"

# Check if the destination directory exists
if [ ! -d "$destination_dir" ]; then
    echo "Destination directory does not exist. Creating..."
    mkdir -p "$destination_dir"
fi

# Copy the file to the destination directory
cp "$file_path" "$destination_dir"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "File installed successfully!"
else
    echo "Error occurred while installing the file."
fi
