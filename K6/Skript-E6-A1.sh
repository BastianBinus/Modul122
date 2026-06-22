#!/bin/bash
function stars () {
    for ((i=0; i<$1; i++)); do
        echo -n "*"
    done
    echo
}

function lines () {
    for ((y=1; y<=$1; y++)); do
        stars y
    done
}


lines 5