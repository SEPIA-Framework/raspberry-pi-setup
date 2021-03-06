#!/bin/bash
NOW=$(date +"%Y_%m_%d_%H%M%S")
cp log.out logs/backup_$NOW.out
rm log.out
JAR_NAME=$(ls | grep "^sepia-assist.*jar" | tail -n 1)
echo "Running SEPIA Assist ($JAR_NAME)"
nohup java -jar -Xms200m -Xmx200m $JAR_NAME --my &> log.out&
