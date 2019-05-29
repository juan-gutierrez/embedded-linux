#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <what_to_find> <to_replace_with> <filename>"
    exit 1
fi

from=$1
to=$2
filename=$3

sed -e "s#$from#$to#" -i $filename

