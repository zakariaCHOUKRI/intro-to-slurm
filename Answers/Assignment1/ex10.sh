#!/bin/bash

# Author: Zakaria CHOUKRI

# Exercise 10

sinfo --format="%N %t %C %m" | awk '$2 == "idle" {print}'
