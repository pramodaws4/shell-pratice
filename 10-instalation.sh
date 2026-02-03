#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "Please run this root user access."
fi

echo "installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then 
    echo "nginx installation failed"
    exit 1
else
    echo "nginx installed successfully"
fi
