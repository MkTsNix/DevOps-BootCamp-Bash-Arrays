#!/bin/bash

# Place your code here
num_folders=$1

letters=({a..z})

for i in $(seq 0 $((num_folders-1))); do
  mkdir "folder_${letters[i]}"
done
