#!/bin/bash
# Interpreter to shell script

# Set backup folder path
# Set backup folder name to today date
backupfolder=/home/fruityty/mysqldumps/$(date +%Y%m%d)

# Make directory 
mkdir $backupfolder

# Set sql file path
sqlfile = $backupfolder/sales_data.sql

# Create backup by mysqldump
mysqldump --databases sales --tables sales_data --host=localhost --port=3306 --user=root --password=root > $sqlfile