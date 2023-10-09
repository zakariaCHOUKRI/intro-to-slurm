#!/bin/bash

# Exercise 6

# Author: Zakaria CHOUKRI

echo "Hostname: $(hostname)"
echo "Kernel version: $(uname -r)"
echo "CPU Information: $(lscpu | grep "Model name")"
echo "Total RAM: $(free -h | awk '/Mem/{print $2}')"
echo "Current date and time: $(date)"