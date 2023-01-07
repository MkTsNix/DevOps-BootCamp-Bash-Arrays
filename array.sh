#!/bin/bash

# Place your code here

count=1
for i in {a..z}; do
    [[ $count -gt $1 ]] && break
    mkdir folder_$i
    ((count++))
done

echo $1 "folders created: $(ls -d folder* | grep -v / | xargs echo | sed 's/ /, /g')"
