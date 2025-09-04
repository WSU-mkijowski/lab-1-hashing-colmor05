#!/bin/bash

# The idea is to create an infinate while loop to find the coins from a dicionary found in the data folder.

# Ideal command is `bash miner.sh | grep " 000"` (include the space in the quates of grep) and use CTRL+C 
# to kill the program once enough coins are found.

# Variable to the dictionary.
dict="../data/dictionary"

# Infinate while loop
while true; do
  while read -r word; do
    # Creates a random number between 1 and 10000 for the nounce.
    nounce=$((RANDOM % (10000 - 1 + 1) + 1))
    # Combines the nounce and the word together.
    comb="${nounce}${word}"
    # Takes comb and uses sha256 to hash
    hash=$(printf "%s" "$comb" | sha256sum | awk '{print $1}')
    # Prints the comb variable and the hash
    echo "$comb -> $hash"
  # Takes the words found in the dictionary file.
  done < "$dict"
done