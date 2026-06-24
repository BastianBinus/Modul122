if [ ! -e "$1" ]; then
echo "Directory does not exist"
exit 1
fi
if [ -w "$1" ]; then
    echo "Schreibrecht: ja"
else
    echo "Schreibrecht: nein"
fi
if [ -x "$1" ]; then
    echo "Ausführrecht: ja"
else
    echo "Ausführrecht: nein"
fi
if [ -r "$1" ]; then
    echo "Leserecht: ja"
else
    echo "Leserecht: nein"
fi


if [ $1 -lt 1582 ] || [ $1 -gt 2200 ]; then
    echo "Jahr nicht zwischen 1582-2200"; exit 1
fi
if $(($1 % 400)); then
echo "$1 ist ein Schaltjahr"
    if $(($1 % 100 = 0)) && $(($1 % 4 = 0)); then
    echo "$1 ist ein Schaltjahr"
    else 
    echo "$1 ist kein Schaltjahr"
    fi
else
echo "$1 ist kein Schaltjahr"
fi

echo "Was wollen sie mit $1 machen:"
echo "L/l - Datei löschen"
echo "K/k - Datei kopieren"
echo "A/a - Abbrechen"
read -p "Eingabe: " auswahl

case $auswahl in 
    L|l) echo "Datei gelöscht";;
    K|k) echo "Datei kopiert";;
    A|a) echo "Abbruch"; exit 1;;