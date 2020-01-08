#!/bin/sh


get_diskUsage (){

df -H | grep -vE '^Filesystem|tmpfs|cdrom|loop*|udev' | awk '{ print $5 " " $1 }' | while read output;

do
  
  currentUsage=$(echo $output | awk '{ print $1}' | cut -d'%' -f1  )
  echo "Current disk usagge is :"$currentUsage  
	if [ $currentUsage -le 50 ]
		then
		echo "disk is healthy"
	elif [ $currentUsage -gt 50 ] && [ $currentUsage -le 70 ]
		then
		echo "disk usage is in orange"
	elif [ $currentUsage -gt 70 ] && [ $currentUsage -le 100 ]
		then
		echo "disk usage is in red"
	else
		echo "UNKNOWN"
		exit 1
	fi
done

}
