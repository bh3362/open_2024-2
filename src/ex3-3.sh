#!/bin/sh


weight=$1
height=$2

# BMI 계산
bmi=$(echo "scale=2; $weight / (($height / 100) * ($height / 100))" | bc)

# 비만 여부 판정
if [ $(echo "$bmi >= 23" | bc) -eq 1 ]; then
    echo "과체중입니다."
elif [ $(echo "$bmi >= 18.5" | bc) -eq 1 ] && [ $(echo "$bmi < 23" | bc) -eq 1 ]; then
    echo "정상체중입니다."
else
    echo "저체중입니다."
fi

