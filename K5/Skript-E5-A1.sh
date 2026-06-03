#!/bin/bash

if [ -z "$1" ]; then
    echo "No Directory provided"
    exit 1
fi


verzeichnis="$1"

for file in $verzeichnis/*; do
    echo "$(basename "$file")"
done

#Ausführen: ./Skript-E5-A1.sh TestDir