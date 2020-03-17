cd /home/ttpl/jenkins_backup_script/
VAR=$(ls -tr|tail -1)
## declare an array variable
declare -a arr=("$1" "$2")

## now loop through the above array
for i in "${arr[@]}"
do
   echo "$i"
   # or do whatever with individual element of the array
gzip -d /home/ttpl/jenkins_backup_script/$VAR/$i-$VAR.sql.gz
mysql -u root --host 192.168.1.34 --port 3306 -pTtpl@123 $i < /home/ttpl/jenkins_backup_script/$VAR/$i-$VAR.sql
done
