#!/bin/bash
boot_time=$(date +%H:%M:%S)
cd /home/bastian
echo "boot time: $boot_time" >> workplace/K8/bootlog.txt


#Crontab-Eintrag anzeigen
#crontab -l

# Script manuell testen
#bash /home/bastian/workplace/K8/Skript-E8-A1.sh

