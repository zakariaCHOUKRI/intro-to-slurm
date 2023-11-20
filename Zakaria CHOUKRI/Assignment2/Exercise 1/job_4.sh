#!/bin/bash
#SBATCH --job-name=job_4
#SBATCH --output=output_4.txt
#SBATCH --partition=special
#SBATCH --ntasks=4
module unload gcc
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0
mpirun -np 4 python3 script.py
