if [ -z $1 ]; then
echo "Zu wenig Parameter angegeben"
exit 1
fi

if [ ! -e "$1" ]; then
    echo "Datei existiert nicht"
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