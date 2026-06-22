#!/bin/bash
boot_time=$(date +%H:%M:%S)
cd /home/bastian
echo "boot time: $boot_time" >> workplace/K8/bootlog.txt
