#!/bin/bash

USERID=$(id -u)
if [$USERID -ne 0 ]; then
echo "Please run as root user."
fi

echo "installing inginx"
dnf install inginx -y
