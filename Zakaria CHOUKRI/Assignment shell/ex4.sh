#!/bin/bash

# Exercise 4

# Author: Zakaria CHOUKRI

while true; do
    echo "Welcome to Zakaria's awesome menu, please choose an action:"
    echo "1. List all files in the current directory."
    echo "2. List all running processes."
    echo "3. Check available disk space."
    echo "4. Exit the program"

    read -p "Enter your choice (1/2/3/4): " choice

    case $choice in
        1)
            echo "Files in the current directory are:"
            ls -lah
            ;;
        2)
            echo "Running processes:"
            ps aux
            ;;
        3)
            echo "Available disk space:"
            df -h
            ;;
        4)
            echo "Exiting the program."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a valid option (1/2/3/4)."
            ;;
    esac

    echo
done

