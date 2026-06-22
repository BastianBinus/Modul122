#!/bin/bash

function quadrat () {
    local zahl=$1
    local ergebnis=$((zahl * zahl))
    return $ergebnis
}

while IFS= read -r zeile; do
    quadrat $zeile
    echo "$zeile * $zeile = $?"
done < testdata.txt
 