#!/bin/bash

# Prints the first column.            # While loop for each line.
awk -F ',' '{print $1}' quiz_data.csv | while read -r line; do
        # Generates a random number for a salt.
        salt=$((RANDOM % 90000 + 10000))
        # Prints the hashed names.
        echo -n "${line}${salt}" | sha256sum | awk '{print $1, salt}'
done
