#!/bin/bash

factorial() {
    zahl=$1
    if (( zahl <= 1 )); then
        echo 1
    else
        sub=$(factorial $(( zahl - 1 )))
        echo $(( zahl * sub ))
    fi
}

factorial 5

