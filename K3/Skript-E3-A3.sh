#!/bin/bash

#export my_increment=5
if [ -z "$1" ]; then
echo "Fehlende Zahl."
exit 1
fi

wert=$1

wert=$((wert+my_increment))
echo "$wert"

wert=$((wert+(my_increment*2)))
echo "$wert"

#unset my_increment