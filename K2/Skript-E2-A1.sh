echo "Anzahl Dateien: $(ls -a ~ | wc -l)"

echo "Alle Dateien mit bash: $(ls -a ~ | grep bash)"

echo "Anzahl Dateien mit bash: $(ls -a ~ | grep bash | wc -l)"

grep "export" ~/.*bash* | grep "PATH" 



find ~ -name "*.sh" -exec grep "cd" {} +
find ~ -name "*.sh" -exec grep -h "cd" {} + 
# -h ohne Pfad