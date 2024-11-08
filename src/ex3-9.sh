#!/bin/sh

# 검색어 입력 확인
if [ $# -ne 1 ]; then
    echo "사용법: sh ./ex3-9.sh [검색어]"
    exit 1
fi

search_term=$1

# DB.txt 파일에서 검색 결과 출력
grep "$search_term" DB.txt

# 검색 결과가 없는 경우 메시지 출력
if [ $? -ne 0 ]; then
    echo "검색된 결과가 없습니다."
fi

