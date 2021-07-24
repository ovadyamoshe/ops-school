#!/bin/bash
#add fix to exercise6-fix here
function CopyToOtherServer (){
	count=0
	if [ $HOSTNAME == "server2" ]
	then 
	servername="server1"
	else
	servername="server2"
	fi
	for i in $1/* $2/*
	do
	((count=count+$(stat -c%s "$i")))
	scp -r $i vagrant@$servername:${@: -1} > foo.txt
	done
	echo $count
}
CopyToOtherServer ~/test/ ~/test2 ~/test

