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

echo "Anzahl Unterverzeichnisse: $(find "$path" -mindepth 1 -maxdepth 1 -type d | wc -l)"
#Ausführen: ./Skript-E5-A2.sh