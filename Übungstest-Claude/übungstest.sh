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

while IFS= read -r abteilung.txt Abteilung; do
if $(grep "IT" mitarbeiter.txt); do
echo" 
else 