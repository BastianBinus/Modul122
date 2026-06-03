#!/bin/bash

if [ -z "$1" ]; then
echo "Fehlende Zahl."
exit 1
fi

anfangsWert=$1
echo "$anfangsWert"

anfangsWert=$((anfangsWert + 1))
echo "$anfangsWert"

anfangsWert=$((anfangsWert + 2))
echo "$anfangsWert"
