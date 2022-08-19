#!/bin/bash
SCREEN_NAME='water'
SERVER_FILE='/home/minecraft/server/water/waterfall-1.19-500.jar'

if screen -ls | grep $SCREEN_NAME ;then
screen -S $SCREEN_NAME -X stuff 'end\015'
sleep 20 #終了待機
screen -S $SCREEN_NAME -X quit
echo "success. : "$SCREEN_NAME
else
echo "There are no server work on."
fi
