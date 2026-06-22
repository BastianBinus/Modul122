#!/bin/bash

# Datum von TT.MM.JJJJ in JJJJ-MM-TT umwandeln
sed -E 's/([0-9]{1,2})\.([0-9]{1,2})\.([0-9]{4})\b/\3-\2-\1/' datum.txt
# \b: ungültige Daten (z.B. 5-stelliges Jahr) werden nicht verändert