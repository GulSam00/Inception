#!/bin/sh

echo "backup database every 5 minutes"

while true;
do
	time=$(date '+%Y-%m-%d %H:%M:%S')
	
	backup_folder="backup_${time}"
	mkdir "/backup/$backup_folder"
	
	echo "backup mariadb server at $time in $backup_folder"
	cp -Rf /db_volume/* /backup/"${backup_folder}"
	
	sleep 5m
done

exit 0