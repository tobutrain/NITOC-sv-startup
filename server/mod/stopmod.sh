#!/bin/bash
SCREEN_NAME='mod'
SERVER_FILE='/home/minecraft/server/mod/mohist-1.12.2-320-server.jar'
SERVER_DIRECTORY='/home/minecraft/server/mod/'

if screen -ls | grep $SCREEN_NAME ;then
screen -S $SCREEN_NAME -X stuff 'say 60秒後にサーバーを停止します。\015';echo "60 : "$SCREEN_NAME
sleep 30
screen -S $SCREEN_NAME -X stuff 'say あと30秒\015';echo "30 : "$SCREEN_NAME
sleep 20
screen -S $SCREEN_NAME -X stuff 'say 10秒前\015';echo "10 : "$SCREEN_NAME
sleep 5
screen -S $SCREEN_NAME -X stuff 'say 5\015'
sleep 1
screen -S $SCREEN_NAME -X stuff 'say 4\015'
sleep 1
screen -S $SCREEN_NAME -X stuff 'say 3\015'
sleep 1 
screen -S $SCREEN_NAME -X stuff 'say 2\015'
sleep 1 
screen -S $SCREEN_NAME -X stuff 'say 1\015'
sleep 1 
screen -S $SCREEN_NAME -X stuff 'say サーバーを停止します\015';echo "stopping : "$SCREEN_NAME
sleep 3
screen -S $SCREEN_NAME -X stuff 'stop\015'
sleep 60 #終了待機
screen -S $SCREEN_NAME -X quit
echo "success. : "$SCREEN_NAME
else
echo "There are no server work on."
fi
