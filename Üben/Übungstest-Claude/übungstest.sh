#!/bin/bash
#grep "IT" mitarbeiter.txt | wc -l
#echo "Hallo $1 $2"
#echo "Du bist Mitarbeiter Nummer $#"

#if [ $1 -le 6000 ]; then
#    echo "Tief"
#elif [ $1 -gt 6000 ] && [ $1 -lt 8000 ]; then
#    echo "Mittel"
#else 
#    echo "Hoch"
#fi

#Schreibe ein Script das mitarbeiter.txt einliest und für jede Abteilung eine
#eigene Datei erstellt mit allen Mitarbeitern dieser Abteilung.

#while IFS= read -r abteilung; do 
#grep "$abteilung" mitarbeiter.txt >> ${abteilung}.txt
#done < abteilungen.txt

function berechne_jahreslohn () {
    jahreslohn=$(($1 * 12))
    echo $jahreslohn
}

function kategorisiere_jahreslohn () {
    local lohn=$(berechne_jahreslohn $1)
    if [ $lohn -lt 10000 ]; then
        echo "Jahreslohn liegt unter 10k"
    else echo "Jahreslohn liegt über 10k"
    fi
}

kategorisiere_jahreslohn 7500