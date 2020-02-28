#!/bin/bash
 
################################################################
##
##   MySQL Database Backup Script 
##   Written By: Rahul Kumar
##   URL: https://tecadmin.net/bash-script-mysql-database-backup/
##   Last Update: Jan 05, 2019
##
################################################################
 
export PATH=/bin:/usr/bin:/usr/local/bin
TODAY=`date +"%d%b%Y"`
 
################################################################
################## Update below values  ########################
 
DB_BACKUP_PATH='/home/ttpl/jenkins_backup_script/'
MYSQL_HOST='192.168.1.34'
MYSQL_PORT='3306'
MYSQL_USER='root'
MYSQL_PASSWORD='Ttpl@123'
DATABASE_NAME='rp'
BACKUP_RETAIN_DAYS=30   ## Number of days to keep local backup copy

######################Checking database exist or not ##########################
RESULT=`mysqlshow  -u root -h $MYSQL_HOST -p$MYSQL_PASSWORD $DATABASE_NAME | grep -v Wildcard | grep -o $DATABASE_NAME`
echo "$RESULT"
echo "$DATABASE_NAME"
if [ "$RESULT" == "$DATABASE_NAME" ]; then
#if [ "$db" == "$i" ]; then


###########################################################
 
mkdir -p ${DB_BACKUP_PATH}/${TODAY}
echo "Backup started for database - ${DATABASE_NAME}"
 
 
mysqldump -h ${MYSQL_HOST} \
   -P ${MYSQL_PORT} \
   -u ${MYSQL_USER} \
   -p${MYSQL_PASSWORD} \
   ${DATABASE_NAME} | gzip > ${DB_BACKUP_PATH}/${TODAY}/${DATABASE_NAME}-${TODAY}.sql.gz
 
if [ $? -eq 0 ]; then
  echo "Database backup successfully completed"
else
  echo "Error found during backup"
  exit 1
fi
 
 
##### Remove backups older than {BACKUP_RETAIN_DAYS} days  #####
 
DBDELDATE=`date +"%d%b%Y" --date="${BACKUP_RETAIN_DAYS} days ago"`
 
if [ ! -z ${DB_BACKUP_PATH} ]; then
      cd ${DB_BACKUP_PATH}
      if [ ! -z ${DBDELDATE} ] && [ -d ${DBDELDATE} ]; then
            rm -rf ${DBDELDATE}
      fi
fi
else 
mysql -u$MYSQL_USER --port $MYSQL_PORT  -p$MYSQL_PASSWORD  -c -h $MYSQL_HOST -e "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME; DROP TABLE IF EXISTS $DATABASE_NAME.version_status; CREATE TABLE IF NOT EXISTS $DATABASE_NAME.version_status (id int(11) NOT NULL AUTO_INCREMENT,project_name varchar(50) DEFAULT NULL,model_name varchar(50) DEFAULT NULL,script_name varchar(50) DEFAULT NULL,installation_date int(11) DEFAULT NULL,script_date int(11) DEFAULT NULL,PRIMARY KEY (id)) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8; INSERT INTO $DATABASE_NAME.version_status (id,project_name,model_name,script_name,installation_date,script_date) VALUES (423424341, 'olCore', 'olcore', 'olcore_v2_schema_2010_08_21.sql', 1582809983, 1566345600);"
fi
### End of script ####
