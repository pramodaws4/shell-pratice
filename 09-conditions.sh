#!/bin/bash

NUMBAR=1
#conditions in shell scripting
# if condition
  # -gt : greater than
  # -lt : less than
  # -eq : equal to
  # -ne : not equal to
  # -ge : greater than or equal to
  # -le : less than or equal to
if [ $NUMBER -gt 20 ]; then
  echo "given number $NUMBER is grater than 20"
elif [ $NUMBER -eq 20 ]; then
  echo "given number $NUMBER is equal to 20"
else
  echo "given number $NUMBER is less than 20"
fi