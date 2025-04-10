#!/bin/bash

# Function to ask for user guess
function ask_guess {
  echo "How many files are in the current directory?"
  read guess
}

# Get actual number of files
file_count=$(ls -1 | wc -l)

# Loop until the user guesses correctly
while true; do
  ask_guess
  if [[ $guess -eq $file_count ]]; then
    echo "Congratulations! You guessed it right."
    break
  elif [[ $guess -lt $file_count ]]; then
    echo "Too low. Try again."
  else
    echo "Too high. Try again."
  fi
done
