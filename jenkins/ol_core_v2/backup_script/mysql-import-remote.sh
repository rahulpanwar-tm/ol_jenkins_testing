sshpass -p "ttpl@123"  ssh ttpl@192.168.1.34  '/jenkins_backup_script/mysql-import.sh'
sshpass -p "ttpl@123"  ssh ttpl@192.168.1.34  'sudo chmod -R 777 /home/ttpl/jenkins_backup_script/mysql-backup.sh'
