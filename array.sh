#!/bin/bash
# Place your code here

folders=$1
names=""

for i in {a..z}; do
  mkdir "folder_$i"
  names="$names folder_$i,"
  folders=$((folders-1))
  if [ "$folders" -eq 0 ]; then
    break
  fi
done

echo "$1 folders created:$names"
