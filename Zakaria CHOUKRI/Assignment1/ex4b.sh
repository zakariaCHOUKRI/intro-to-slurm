#!/bin/bash

# Author: Zakaria CHOUKRI

# Exercise 4

#SBATCH --job-name=ex4b
#SBATCH --output=ex4b_output.txt
#SBATCH --dependency=afterok:5842726

python ex4.py
