#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Not enough parameter provided"
    exit 1
fi

stars () {
    for ((i=0; i<$1; i++)); do
        echo -n "*"
    done
    echo
}

lines () {
    for ((y=0; y<$3; y++)); do
        for ((x=0; x<$1; x++)); do
        stars $2
        done
    done
}

lines 4 $1 $2