#!/bin/bash

while IFS= read -r land; do
    grep "$land" worldcupplayerinfo.txt > "${land}.txt"
done < countries.txt

#löschen: while IFS= read -r land; do rm -f "${land}.txt"; done < countries.txt