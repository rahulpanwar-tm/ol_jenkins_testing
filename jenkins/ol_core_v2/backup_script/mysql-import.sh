VAR=$(ls -tr|tail -1)
mysql -u root --host 192.168.1.34 --port 3306 -pTtpl@123 rp < /home/ttpl/jenkins_backup_script/$VAR/rp-$VAR.sql
