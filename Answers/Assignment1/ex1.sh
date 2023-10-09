#!/bin/bash

# Author: Zakaria CHOUKRI

# Exercise 1

#SBATCH --job-name=ex1
#SBATCH --output=ex1_output.txt

echo "Hello, SLURM!" > ex1_output.txt
