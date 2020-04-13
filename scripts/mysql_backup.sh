#!/bin/sh

TODAY=$(date +"%F")
BACKUP_DIR="/var/lib/mysql/backup"
MYSQL_USER="wp_user"
MYSQL_PASSWORD="wp_user"
DATABASE="wordpress"
MIN_DAY=$(date -d '-5days' +"%F")

echo $DATABASE "database backup for" $TODAY "in progress..."

echo "Storing mysqldump in" $BACKUP_DIR"/"$TODAY
mkdir -p $BACKUP_DIR/$TODAY
mysqldump -u $MYSQL_USER -p$MYSQL_PASSWORD --databases $DATABASE > $BACKUP_DIR/$TODAY/$DATABASE.sql

echo "Removing backups older than 5 days"
rm -rf $BACKUP_DIR"/"$MIN_DAY
