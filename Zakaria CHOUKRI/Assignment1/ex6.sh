#!/bin/bash

# Author: Zakaria CHOUKRI

# Exercise 6

#SBATCH --job-name=error_handling_debugging
#SBATCH --output=ex6_output.txt
#SBATCH --error=error.txt

non_existent_command
