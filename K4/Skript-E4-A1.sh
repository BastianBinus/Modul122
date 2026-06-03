#!/bin/bash

file=$1

if [ -z "$file" ]; then
    echo "Kein Filename mitgegeben"
    exit 1
fi

echo "Was soll gemacht werden?"
echo "Löschen (1)"
echo "Kopieren (2)"
read -p "Aktion: " inputWert

if [ $inputWert -eq 1 ]; then
    read -p "Sind sie sicher? Y/N " sicher
    if [ "$sicher" = "y" ] || [ "$sicher" = "Y" ]; then
        rm "$file"
        echo "Datei wurde gelöscht."
    elif [ "$sicher" = "n" ] || [ "$sicher" = "N" ]; then
        echo "Vorgang abgebrochen"
        exit 0
    else 
        echo "Ungültige Eingabe"
        exit 1
    fi
elif [ $inputWert -eq 2 ]; then
    read -p "Geben sie bitte der neuen Datei einen Namen: " newName
    cp "$file" "$newName"
    echo "$newName wurde gespeichert"
else 
    echo "Ungültiger Wert"
    exit 1
fi

#Ausführen: ./Skript-E4-A1.sh
#Skript erstellen: touch test.txt
#Überprüfen: ls | grep test.txt