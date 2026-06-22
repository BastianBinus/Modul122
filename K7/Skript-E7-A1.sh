#!/bin/bash

while IFS= read -r land; do
    grep "$land" Testdaten/worldcupplayerinfo.txt > "${land}.txt"
done < Testdaten/countries.txt

#löschen: while IFS= read -r land; do rm -f "${land}.txt"; done < Testdaten/countries.txt
