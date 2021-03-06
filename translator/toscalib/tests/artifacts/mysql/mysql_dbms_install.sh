#!/bin/bash
#This script installs mysql server

#Trying to avoid multiple apt-get's running simultaneously (in the
#rare occasion that the apt-get command fails rerun the script).
while [[ "$(ps -A | grep apt-get | awk '{print $1}')" != "" ]]; do
    echo "Waiting for the other apt-get process to complete ..."
    r=$RANDOM && let "sec=$r/10000" && let "mil=($r%10000)/10"
    sleep $sec.$mil
done
apt-get update

debconf-set-selections <<< "mysql-server mysql-server/root_password password $db_root_password"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $db_root_password"

#Trying to avoid multiple apt-get's running simultaneously (in the
#rare occasion that the apt-get command fails rerun the script).
while [[ "$(ps -A | grep apt-get | awk '{print $1}')" != "" ]]; do
    echo "Waiting for the other apt-get process to complete ..."
    r=$RANDOM && let "sec=$r/10000" && let "mil=($r%10000)/10"
    sleep $sec.$mil
done
apt-get -y install --fix-missing mysql-server