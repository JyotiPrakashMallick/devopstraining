#!/bin/bash

Jenkins_status(){

# To check jenkins is active and running in server or not
STATUS=$(systemctl is-active jenkins.service)

# To start jenkins if it is inactive
Jenkins_start=$(sudo systemctl start jenkins.service)

  if [ $STATUS == 'active' ]; then
    echo " Jenkins is Running "
  else
    echo " Jenkins is inactive "
    echo " Starting Jenkins service "$Jenkins_start
    echo " Jenkins is Running "
  fi

}

Disk_utilization(){

space=$(sudo du -sh /var/lib/jenkins | awk '{print $1}')
Disk_space=${space//M}
Disk_limit=100
Jenkins_stop=$(sudo systemctl stop jenkins.service)
Jenkins_start=$(sudo systemctl start jenkins.service)
remove_files=$(sudo rm -rfv /var/lib/jenkins/logs/*)

if [ $Disk_space -le $Disk_limit ]
then
echo " Disk Space is okay "

else
echo " Disk Utilization is more then 100MB "
echo " stopping Jenkins service "$Jenkins_stop
echo " Removing files from Jenkins logs "$remove_files
echo " Re-starting Jenkins services "$Jenkins_start

fi
}

Jenkins_status 
Disk_utilization
