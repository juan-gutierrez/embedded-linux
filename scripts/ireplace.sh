#!/bin/bash 

export PATH=$PATH:$(dirname $(realpath $0))

read -p "find what: " usrInput
from=$usrInput
read -p "replace with: " usrInput
to=$usrInput
read -p "filename: " usrInput
filename=$usrInput

echo "replacing $from with $to on file: $filename"

replace.sh "$from" "$to" "$filename"


