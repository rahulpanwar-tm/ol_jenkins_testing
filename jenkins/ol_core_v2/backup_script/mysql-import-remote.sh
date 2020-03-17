#!/bin/sh
#!/usr/bin/env bash
# sshpass -p "ttpl@123"  ssh ttpl@192.168.1.34  'gzip -d /home/ttpl/jenkins_backup_script/$(ls -tr|tail -1)/rp-$(ls -tr|tail -1).sql.gz'
# rp rp_tp /home/ttpl/jenkins/ ttpl@123 ttpl 192.168.1.34
echo $1 $2 $3 $4 $5 $6
commcand="bash $3mysql-import.sh $1 $2"
echo $commcand
sshpass -p $4  ssh $5@$6 $commcand