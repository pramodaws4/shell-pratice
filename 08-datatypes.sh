#!/bin/bash

NUM1=200
NUM2=50
SUM=$(($NUM1 + $NUM2))
echo "Sum of $NUM1 and $NUM2 is: $SUM"


num3=15
num4=4
Sum=$(($num3 + $num4))
echo "Sum of $num3 and $num4 is: $Sum"  

##arrays or lists
FRUITS=("Apple" "Banana" "Orange" "Mango")
echo "Fruits in the list are: ${FRUITS[@]}"
