#!/bin/bash


if [ "$#" -eq "0" ]
then
    echo "usage: $0 file"
    exit -1
fi

FILENAME="$1"

indent-with-vim.sh "$FILENAME"
sed -i -e 's/\s\+$//' "$FILENAME"
