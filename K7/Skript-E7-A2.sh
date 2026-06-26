#!/bin/bash

function quadrat() {
    local zahl=$1
    echo $(( zahl * zahl )) 
}

while read -r zeile; do
    ergebnis=$(quadrat $zeile)
    echo "$zeile * $zeile = $ergebnis"
done < testdata.txt
 