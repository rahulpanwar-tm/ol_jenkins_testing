#!/bin/sh
#!/usr/bin/env bash
# sshpass -p "ttpl@123"  ssh ttpl@192.168.1.34  'gzip -d /home/ttpl/jenkins_backup_script/$(ls -tr|tail -1)/rp-$(ls -tr|tail -1).sql.gz'
echo $1 $2 $3
commcand="bash $3mysql-import.sh $1 $2"
echo $commcand
sshpass -p "ttpl@123"  ssh ttpl@192.168.1.34 $commcand