#!/bin/bash

sh /home/minecraft/stop.sh > /home/minecraft/sv-logs/stop.log
sleep 5
sh /home/minecraft/backup.sh > /home/minecraft/sv-logs/backup.log
sleep 5
echo "Reboot Preparation Complete. Date: "`date`