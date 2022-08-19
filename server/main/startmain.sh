#!/bin/bash
SCREEN_NAME='main'
SERVER_FILE='/home/minecraft/server/main/paper-1.19.1-109.jar'
SERVER_DIRECTORY='/home/minecraft/server/main/'

if ! screen -ls | grep $SCREEN_NAME ; then
	screen -md $SCREEN_NAME
fi
screen -S $SCREEN_NAME -X stuff 'cd '$SERVER_DIRECTORY'\015'
screen -S $SCREEN_NAME -X stuff 'java -jar -Xmx3G -Xms3G '$SERVER_FILE'\015'
