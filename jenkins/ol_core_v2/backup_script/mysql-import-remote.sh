# sshpass -p "ttpl@123"  ssh ttpl@192.168.1.34  'gzip -d /home/ttpl/jenkins_backup_script/$(ls -tr|tail -1)/rp-$(ls -tr|tail -1).sql.gz'
remote_path = $3
versioning_db = $1
tp_db = $2
sshpass -p "ttpl@123"  ssh ttpl@192.168.1.34  'bash $remote_pathmysql-import.sh $versioning_db $tp_db'