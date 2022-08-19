#!/bin/bash
sh /home/minecraft/server/main/backupmain.sh
sh /home/minecraft/server/main/backupmain_nether.sh
sh /home/minecraft/server/main/backupmain_the_end.sh
sh /home/minecraft/server/mod/backupmod.sh

echo "Backup Complete."
echo "DATE: "`date`