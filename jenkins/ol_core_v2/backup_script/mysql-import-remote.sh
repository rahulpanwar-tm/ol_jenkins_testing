#!/bin/sh
#!/usr/bin/env bash
# sshpass -p "ttpl@123"  ssh ttpl@192.168.1.34  'gzip -d /home/ttpl/jenkins_backup_script/$(ls -tr|tail -1)/rp-$(ls -tr|tail -1).sql.gz'
Execution_command='$3mysql-import.sh $1 $2'
echo $Execution_command
sshpass -p "ttpl@123"  ssh ttpl@192.168.1.34  'bash $Execution_command'