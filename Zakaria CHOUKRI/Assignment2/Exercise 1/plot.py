import os
import re
import matplotlib.pyplot as plt

def extract_cpu_time(file_path):
    with open(file_path, 'r') as file:
        content = file.read()
        match = re.search(r'cpu time is: (\d+\.\d+)', content)
        if match:
            return float(match.group(1))
        else:
            return None

def plot_cpu_time(output_files):
    core_counts = [int(re.search(r'output_(\d+).txt', file).group(1)) for file in output_files]
    cpu_times = [extract_cpu_time(file) for file in output_files]

    plt.plot(core_counts, cpu_times, marker='o')
    plt.title('CPU Time vs Number of Cores')
    plt.xlabel('Number of Cores')
    plt.ylabel('CPU Time (s)')
    plt.grid(True)
    plt.show()

if __name__ == "__main__":
    output_files = [file for file in os.listdir() if file.startswith('output_') and file.endswith('.txt')]
    output_files.sort()  # Sort files to maintain the order

    plot_cpu_time(output_files)

