#!/bin/bash
SCREEN_NAME='water'
SERVER_FILE='/home/minecraft/server/water/waterfall-1.19-500.jar'
SERVER_DIRECTORY='/home/minecraft/server/water/'

if ! screen -ls | grep $SCREEN_NAME ; then
	screen -md $SCREEN_NAME
fi
screen -S $SCREEN_NAME -X stuff 'cd '$SERVER_DIRECTORY'\015'
screen -S $SCREEN_NAME -X stuff 'java -jar -Xmx256M -Xms256M '$SERVER_FILE'\015'
