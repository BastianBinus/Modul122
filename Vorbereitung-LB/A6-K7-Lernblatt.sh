#!/bin/bash
gesamtBetrag=0
#while read -r name betrag; do
#gesamtBetrag=$((gesamtBetrag + $betrag)) 
#done < datei.txt

#while IFS= read -r country; do
#grep "$country" daten.txt > "${country}.txt"
#done < laender.txt

grep "ERROR" system.log > errors.txt

