#!/bin/bash

# Exercise 5

# Author: Zakaria CHOUKRI

destination_directory="large_files"

mkdir -p "$destination_directory"

log_file="moved_files.log"

date > "$log_file"

find . -type f -size +10M -exec mv {} "$destination_directory" \;

find "$destination_directory" -type f -exec echo "{} moved from {}" \; >> "$log_file"

echo "Process completed. Moved files are in '$destination_directory'."
echo "Log file is '$log_file'."

