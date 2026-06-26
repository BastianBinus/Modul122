anzahl=0
#for file in "$1"/*; do
#anzahl=$((anzahl + 1))
#echo "$file"
#done
#echo "Gesamt: $anzahl"

#for unterverzeichnis in "$1"/*; do
#[ -d "$unterverzeichnis" ] || continue
#anzahl=$((anzahl + 1))
#done
#echo "Gesamt: $anzahl"

#for txtFile in "$1"/*.txt; do
#echo "$txtFile"
#mv "$txtFile" ${txtFile%.txt}.bak
#echo "$txtFile"
#done

anzahl2=1
for file in "$1"/*; do
[ -f "$file" ] || continue
mv "$file" "$1/FILE$anzahl2"
anzahl2=$((anzahl2 + 1))
done