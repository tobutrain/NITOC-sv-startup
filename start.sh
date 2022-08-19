#!/bin/bash
sh /home/minecraft/server/main/startmain.sh
sh /home/minecraft/server/mod/startmod.sh
sh /home/minecraft/server/water/startwater.sh
sleep 5
screen -ls
echo "Start Up Success."