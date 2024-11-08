#!/bin/sh


num1=$1
operator=$2
num2=$3


if [ "$operator" = "+" ]; then
    expr $num1 + $num2
elif [ "$operator" = "-" ]; then
    expr $num1 - $num2
fi

