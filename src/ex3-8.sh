#!/bin/sh


if [ "$1" = "--reset" ]; then
    > DB.txt
    echo "DB 초기화가 완료되었습니다."
    exit 0
fi

#DB.txt에 기록
if [ $# -ge 1 ]; then
    entry="$*"
    echo "$entry" >> DB.txt
    echo "$entry이(가) DB.txt에 추가되었습니다."
else
    echo "사용법: sh ./ex3-8.sh [이름 및 기타 정보]"
    echo "옵션: --reset : 기존 DB.txt 파일을 초기화합니다."
    exit 1
fi

