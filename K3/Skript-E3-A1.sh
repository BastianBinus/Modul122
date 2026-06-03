#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
echo "Keine Zwei Zahlen mitgegeben."
exit 1
fi

summe=$(($1 + $2))
produkt=$(($1 * $2))

echo "Die Summe aus $1 und $2 beträgt $summe"
echo "Das Produkt aus $1 und $2 beträgt $produkt"

