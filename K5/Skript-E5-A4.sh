#!/bin/bash

if [ -z "$1" ]; then
    echo "No Directory provided"
    exit 1
fi

path=$(find "$HOME" -type d -name "$1" 2>/dev/null | head -1)

if [ -z "$path" ]; then
    echo "Directory not found: $1"
    exit 1
fi
echo "Backupfolder wird erstellt falls noch nicht vorhanden"

mkdir -p Backup

echo "Backup Files only or with Directives?"
echo "Files only         (1)"
echo "Files + Directives (2)"
read auswahl

if [ $auswahl -eq 1 ]; then

    for file in "$path"/*;
    do
        [ -f $file ] || continue
        cp "$file" "./Backup/${file##*/}-Backup"
    done

elif [ $auswahl -eq 2 ]; then

    for file in "$path"/*; do
        cp -r "$file" "./Backup/${file##*/}-Backup"
    done
else 
echo "Wrong input"
exit 1
fi

#Backup löschen: rm Backup
#Ausführen: ./Skript-E5-A4.sh