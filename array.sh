#!/bin/bash

# Place your code here

#count=1
#phrase="folders"
#for i in {a..z}; do
#    [[ $count -gt $1 ]] && break
#    mkdir folder_"$i"
#    ((count++))
#done

#if [[ $1 -eq 1 ]]; then phrase="folder"
#fi

#echo "$phrase created: $(ls -d folder* | grep -v / | xargs echo | sed 's/ /, /g')"

#chars=( {a..z} )
#for ((i=0; i<$1; i++))
#do
#mkdir "folder_${chars[i]}"
#done

#if [[ $1 == 1 ]]
#then
#echo -n "$1 folder created: "
#else
#echo -n "$1 folders created: "
#fi

#ls -d folder_* | sed "s/ /, /" #| tr ": " ", " | sed 's/. $//'

#echo -n $(ls -d) folder_* | sed "s/. //" | sed "s/ /, /g"

sym=({a..z})

for i in ""$(seq 1 $1)""; do
  mkdir "folder_${sym[$i - 1]}"
done
