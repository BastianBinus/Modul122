#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
echo "Fehlende Zahl."
exit 1
fi

file1=$1
file2=$2

if [ -w $file1 ] || [ -w $file2 ]; then
    
    echo "Schreibrecht vorhanden"

else

    echo "Kein Schreibrecht vorhanden"

fi

#./Skript-E4-A2.sh datei1.txt datei2.txt   # beide schreibbar → "Schreibrecht vorhanden"
#./Skript-E4-A2.sh datei1.txt datei3.txt   # eine schreibbar → "Schreibrecht vorhanden"
#./Skript-E4-A2.sh datei3.txt datei3.txt   # keine schreibbar → "Kein Schreibrecht vorhanden"