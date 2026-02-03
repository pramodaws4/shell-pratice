#!/bin/bash

echo "please give your name :"
read user_name

echo "Hello, $user_name! Welcome to the shell scripting world."

echo "please enter your password: "
read -s user_password
echo "Thank you! Your password has been securely received. your password is $user_password"