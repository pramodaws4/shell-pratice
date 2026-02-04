#!/bin/bash

USERID=$(id -u)
LOG_FOLDER="/ver/log/shell-script"
LOG_FILE="/ver/log/shell-script/$0.log"


if [ $USERID -ne 0 ]; then
echo "Please run this root user access."
fi

mkdir -p $LOG_FOLDER

validate(){
if [ $1 -ne 0 ]; then 
    echo "$2 installation ... failed"
    exit 1
else
    echo "$2 installation .... successfully"
fi
}

dnf install nginx -y    &>> $LOG_FILE
validate $? "installing nginx"

dnf install mysql -y    &>> $LOG_FILE
validate $? "installing mysql"

dnf install nodejs -y &>> $LOG_FILE
validate $? "installing nodejs"
