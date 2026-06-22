#!/bin/bash
/home/bastian/.local/bin/wsl-notify-send.exe --appId "WSL" "$(date +%H:%M:%S)"
echo $(date +%H:%M:%S) >> /home/bastian/workplace/K8/KF-log.txt



# Crontab anzeigen
#crontab -l

# Script manuell testen
#bash bash /home/bastian/workplace/K8/Skript-F8-A1.sh