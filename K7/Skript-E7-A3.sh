#!/bin/bash

gesamt=0

while read artikel preis; do
    gesamt=$(echo "$gesamt + $preis" | bc)
    echo "$artikel: $preis EUR"
done < rechnung.txt

echo "------------------------"
echo "Gesamt: $gesamt EUR"