#!/bin/bash
ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%s)
LOGFILE=/tmp/$0-$TIMESTAMP.log

echo "this $0 started executed $TIMESTAMP" &>> $LOGFILE
VALIDATE(){
 if [ $1 -ne 0 ];then
 echo -e "$2...$R FAiled$N"
 else
 echo -e "$2... $G success$N"
 fi
}




if [ $ID -ne 0 ]
then
	echo -e "$R ERROR::  please run this script as a root user $N"
	exit 1
else
	echo "your root user"
fi

#echo -e "$G All Arguments passed: $@ $N"
#git mysql net-tools
#package=git for first time
for package in $@
do
	yum list installed $package &>> $LOGFILE
	if [ $? -ne 0 ]
	then 
	yum install $package -y &>> $LOGFILE
	VALIDATE $? "installation of the $package"
	else
	echo -e "$package is already installed... $Y skipping $N"
	fi
done
