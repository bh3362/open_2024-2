#!/bin/sh

if [ "$#" -eq 1 ]; then
    # 입력 인수가 있을 때 (예: sh ./ex3-1.sh 5)
    count=$1

    # 숫자인지 확인
    if echo "$count" | grep -Eq '^[0-9]+$'; then
        i=0
        while [ "$i" -lt "$count" ]; do
            echo "hello world"
            i=`expr $i + 1`
        done
    else
        echo "유효한 숫자를 입력하세요."
        exit 1
    fi
else
    # 입력 인수가 없을 때 바로 무한 루프 실행 (예: sh ./ex3-1.sh)
    while true; do
        echo "hello world"
    done
fi

