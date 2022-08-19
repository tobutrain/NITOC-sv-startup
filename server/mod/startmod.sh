#!/bin/bash
SCREEN_NAME='mod'
SERVER_FILE='/home/minecraft/server/mod/mohist-1.12.2-320-server.jar'
SERVER_DIRECTORY='/home/minecraft/server/mod/'

if ! screen -ls | grep $SCREEN_NAME ; then
	screen -md $SCREEN_NAME
fi
screen -S $SCREEN_NAME -X stuff 'cd '$SERVER_DIRECTORY'\015'
screen -S $SCREEN_NAME -X stuff 'java -jar -Xmx10G -Xms10G '$SERVER_FILE'\015'
