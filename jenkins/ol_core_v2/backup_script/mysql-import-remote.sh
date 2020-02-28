sshpass -p "ttpl@123"  ssh ttpl@192.168.1.34  'gzip -d /home/ttpl/jenkins_backup_script/28Feb2020/rp-28Feb2020.sql.gz'
sshpass -p "ttpl@123"  ssh ttpl@192.168.1.34  'bash /home/ttpl/jenkins_backup_script/mysql-import.sh'

