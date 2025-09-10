#!/bin/bash

if [ $# -ne 3 ]; then
echo "Usage: $0 <num1, num2, operator>"
exit 1
fi

sum(){
    echo "Result=$(($1 + $2))"
}

Substract(){
    echo "Result=$(($1 - $2))"
}

multiply(){
    echo "Result=$(($1 * $2))"
}

divide(){
    if [ $3 -eq 0 ]; then
    echo "Invalid."
    else
    echo "Result=$(($1 / $2))"
    fi
}

num1=$1
num2=$2
op=$3


case $op in
+) sum $num1 $num2;;
-) substract $num1 $num2;;
*) multiply $num1 $num2;;
/) divide $num1 $num2;;
esac


