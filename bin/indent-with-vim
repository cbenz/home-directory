#!/bin/bash


if [ "$#" -eq "0" ]
then
    echo "usage: $0 file"
    exit -1
fi

FILENAME="$1"

cat <<EOD |
set sw=4
set ts=4
set expandtab
%normal! ==
wq
EOD
ex -X "$FILENAME"
