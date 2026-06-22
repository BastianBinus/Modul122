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

factorial 12

#factorial(5)
#    → 5 * factorial(4)
#          → 4 * factorial(3)
#                → 3 * factorial(2)
#                      → 2 * factorial(1)
#                            → gibt 1 zurück   ← Abbruchbedingung
#                      → 2 * 1 = 2
#                → 3 * 2 = 6
#          → 4 * 6 = 24
#    → 5 * 24 = 120