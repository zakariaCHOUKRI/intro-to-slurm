#!/bin/bash

# Exercise 1

# Author: Zakaria CHOUKRI

for core in {1..128}
do
	script="job_${core}.sh"

	echo "#!/bin/bash" > $script
	echo "#SBATCH --job-name=job_${core}" >> $script
	echo "#SBATCH --output=output_${core}.txt" >> $script
	echo "#SBATCH --partition=special" >> $script
	echo "#SBATCH --ntasks=$core" >> $script
	
	echo "module unload gcc" >> $script
	echo "module load OpenMPI/4.0.3-GCC-9.3.0" >> $script
	echo "module load Python/3.8.2-GCCcore-9.3.0" >> $script
	echo "mpirun -np $core python3 script.py" >> $script  

	sbatch $script
done

