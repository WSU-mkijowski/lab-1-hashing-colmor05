#!/bin/bash

# -F splits on commas | -v starts salt variable at 10000 | val=$1 salt_inc=salt++ increments salt by 1 | 
# printf prints string back two strings back to back and adds a new line.
awk -F',' -v salt=10000 '{ val+$1 salt_inc=salt++ ; printf "%s%s\n", $1, salt_inc | "sha256sum" }' quiz_data.csv
