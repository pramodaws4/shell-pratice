#!/bin/bash

set -e # it will check for errors if error exit it's stopes

USERID=$(id -u)
LOG_FOLDER="/ver/log/shell-script"
LOG_FILE="/ver/log/shell-script/$0.log"
R='\e[31m' #red
G='\e[32m' #green
Y='\e[33m' #yellow
B='\e[34m' ##blue
D='\e[0m' ##default color


if [ $USERID -ne 0 ]; then
echo "Please run this root user access." | tee -a $LOG_FILE
fi

mkdir -p $LOG_FOLDER

validate(){
if [ $1 -ne 0 ]; then 
    echo "$2 installation ... failed" | tee -a $LOG_FILE
    exit 1
else
    echo "$2 installation .... successfully" | tee -a $LOG_FILE
fi
}

for package in $@
do
    dnf list installed $package &>> $LOG_FILE
    if [ $? -ne 0 ]; then
     echo "$package not installed .. installing now" | tee -a $LOG_FILE
        dnf  install $package -y    &>> $LOG_FILE
         validate $? "$package installing"
    else
      echo -e "$package installation already done  $Y skipping  $N"| tee -a $LOG_FILEILE
    fi

done
