#!/bin/bash

# Author: Zakaria CHOUKRI

# Exercise 4

#SBATCH --job-name=job_b
#SBATCH --output=ex4b_output.txt
#SBATCH --dependency=afterok:job_a

python quadratic_equation.py
