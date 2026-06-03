#!/bin/bash
read -p "Bite geben sie eine Jahreszahl ein (1582-2200): " jahreszahl

if [ $jahreszahl -gt 1582 -a $jahreszahl -lt 2200 ]; then
    if [ $((jahreszahl % 400)) -eq 0 ]; then
        echo "Dieses Jahr ist ein Schaltjahr"
    elif [ $((jahreszahl % 4)) -eq 0 -a $((jahreszahl % 100)) -ne 0 ]; then
        echo "Dieses Jahr ist ein Schaltjahr"
    else
        echo "Dies ist kein Schaltjahr"
    fi
else 
    echo "Ungültiges Jahr"
    exit 1
fi

#Ausführen: ./Skript-E4-A3.sh