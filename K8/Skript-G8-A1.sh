#!/bin/bash
/home/bastian/.local/bin/wsl-notify-send.exe --appId "WSL" "$(date +%H:%M:%S)"
echo $(date +%H:%M:%S) >> /home/bastian/workplace/K8/KG-log.txt

