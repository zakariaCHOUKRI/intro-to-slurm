#!/bin/bash

# Exercise 8

# Author: Zakaria CHOUKRI

cleanup_directory() {
    for dir in "$1"/*; do
        if [ -d "$dir" ]; then
            cleanup_directory "$dir"
            if [ -z "$(ls -A "$dir")" ]; then
                echo "Deleting empty directory: $dir"
                rmdir "$dir"
            fi
        fi
    done
}

directory_to_clean="."

if [ -d "$directory_to_clean" ]; then
    find "$directory_to_clean" -type d -empty -delete
    echo "Cleanup completed."
else
    echo "Directory not found: $directory_to_clean"
fi

