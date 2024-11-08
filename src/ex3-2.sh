#!/bin/sh

# 입력 인수 할당
num1=$1
operator=$2
num2=$3

# 계산 수행
if [ "$operator" = "+" ]; then
    expr $num1 + $num2
elif [ "$operator" = "-" ]; then
    expr $num1 - $num2
fi

