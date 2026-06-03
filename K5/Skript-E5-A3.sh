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

i=1
for file in "$path"/*; 
do
    [ -f $file ] || continue
    mv $file "$path/FILE$i"
    i=$((i+1))
done


#Files in TestDir erstellen: rm TestDir/FILE1 TestDir/FILE2 TestDir/FILE3 && touch TestDir/test1 TestDir/test2 TestDir/test3

#Ausführen: ./Skript-E5-A3.sh