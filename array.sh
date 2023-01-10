#!/bin/bash

# Place your code here


chars=( {a..z} )
for ((i=0; i<$1; i++))
do
mkdir "folder_${chars[i]}"
done

if [[ $1 == 1 ]]
then
 output="$1 folder created: "
else
 output="$1 folders created: "
fi

echo "$output: $(ls -d folder* | grep -v / | xargs echo | sed 's/ /, /g')"
