#!/bin/bash

# This script scans a target directory and deletes all files recursively that are not in the allowed extensions. This is for use with octopii to delete files that it can't scan for PHI/PII.
 
# Define the target directory and allowed file extensions
target_dir="/path/to/your/target_directory"
allowed_extensions=("csv" "doc" "docx" "eml" "epub" "gif" "htm" "html" "jpeg" "jpg" "json" "log" "mp3" "msg" "odt" "ogg" "pdf" "png" "pptx" "ps" "psv" "rtf" "tab" "tff" "tif" "tiff" "tsv" "txt" "wav" "xls" "xlsx")
 
# Validate the target directory
if [ ! -d "$target_dir" ]; then
    echo "Target directory not found: $target_dir"
    exit 1
fi
 
# Change to the target directory
cd "$target_dir" || exit
 
# Delete files with disallowed extensions
for ext in *; do
    if [ ! -d "$ext" ] && ! [[ " ${allowed_extensions[@]} " =~ " $ext " ]]; then
        echo "Deleting: $ext"
        rm -f "$ext"
    fi
done
 
echo "Files with allowed extensions are preserved."
