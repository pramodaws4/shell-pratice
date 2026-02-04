#!/bin/bash

USERID=$(id -u)
LOG_FOLDER="/ver/log/shell-script"
LOG_FILE="/ver/log/shell-script/$0.log"


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
    dnf install $package -y    &>> $LOG_FILE
    validate $? "$package installing"
done
