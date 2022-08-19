#!/bin/bash

sh /home/minecraft/server/main/stopmain.sh
sh /home/minecraft/server/mod/stopmod.sh
sh /home/minecraft/server/water/stopwater.sh
sleep 30
screen -ls
echo "Stop Success."
echo "Date: "`date`