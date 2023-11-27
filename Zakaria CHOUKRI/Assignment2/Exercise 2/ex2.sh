#!/bin/bash

# Exercise 1

# Author: Zakaria CHOUKRI

#SBATCH --job-name=ex2
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --output=output_%j.txt
#SBATCH --partition=special

# Set the total_points and cores array
total_points_array=(1000 10000 100000 1000000)
cores_array=(1 2 4 8)

for total_points in "${total_points_array[@]}"; do
    for cores in "${cores_array[@]}"; do
        echo "Running with total_points=$total_points and cores=$cores"
        mpiexec -n $cores python3 script.py $total_points
    done
done

