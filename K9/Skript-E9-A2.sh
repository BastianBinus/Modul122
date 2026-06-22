#!/bin/bash

# Kreditkartennummer maskieren, nur letzte 4 Ziffern sichtbar
sed -E 's/[0-9]{4} ?[0-9]{4} ?[0-9]{4} ?([0-9]{4})\b/**** **** **** \1/' kreditkartennr.txt

#? bedeutet optional für falls beim schreiben der kreditkartennummer ein leerzeichen da sein könnte oder auch nicht