#!/bin/bash

# Minecraft-Koordinaten von x=100 y=64 z=-200 in (100, 64, -200) umwandeln
sed -E 's/x=(-?[0-9]+) y=(-?[0-9]+) z=(-?[0-9]+)/(\1, \2, \3)/' koordinaten.txt
# + eine oder mehr ziffern