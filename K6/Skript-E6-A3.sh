#!/bin/bash

bmiRechnen() {
    local gewicht=$1
    local groesse=$2
    echo $(( gewicht * 10000 / (groesse * groesse) ))
}

bmiKategorien() {
    local bmi=$(bmiRechnen $1 $2)

    if (( bmi < 18 )); then
        echo "BMI $bmi -> Untergewicht"
    elif (( bmi < 25 )); then
        echo "BMI $bmi -> Normalgewicht"
    else
        echo "BMI $bmi -> Übergewicht"
    fi
}

bmiKategorien 70 175