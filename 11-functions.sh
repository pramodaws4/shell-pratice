#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "Please run this root user access."
fi

validate(){
if [ $1 -ne 0 ]; then 
    echo "$2 installation ... failed"
    exit 1
else
    echo "$2 installation .... successfully"
fi
}

dnf install nginx -y    
validate $? "installing nginx"

dnf install mysql -y
validate $? "installing mysql"

dnf install nodejs -y
validate $? "installing nodejs"
