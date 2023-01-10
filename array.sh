#!/bin/bash

# Place your code here

count=1
phrase="folders"
for i in {a..z}; do
    [[ $count -gt $1 ]] && break
    mkdir folder_"$i"
    ((count++))
done

if [[ $1 -eq 1 ]]; then phrase="folder"
fi

echo "$phrase created: $(ls -d folder* | grep -v / | xargs echo | sed 's/ /, /g')"
