if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]; then
echo "Zu wenig Parameter angegeben bitte Zahl Operator zahl mitgeben"
exit 1
fi

ergebnis=$(echo "$1 $2 $3" | bc)
echo "$ergebnis"