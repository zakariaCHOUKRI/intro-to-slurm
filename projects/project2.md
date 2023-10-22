## Manage resources

Create an application that allows the user to choose a partition and then automatically displays the number of available CPUs in that partition using the ```scontrol```, ```squeue```, and ```sinfo``` commands, you can follow these steps:

### Data Collection:
- Use the ```scontrol```, ```squeue```, and ```sinfo``` commands to collect information about the partitions and resources in the cluster.
- Analyze this information to extract the available partitions and the number of available CPUs and GPUs in each partition.

### Create an Interface with Dash:
- Use Dash to create a web interface that allows the user to select a partition from the list of available partitions.
- Use a callback function to automatically update the number of available CPUs based on the selected partition.

