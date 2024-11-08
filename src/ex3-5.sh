#!/bin/sh

# 내부 함수 정의
list_files() {
    ls "$@"
}

# 프로그램 시작 메시지
echo "프로그램을 시작합니다."

# 입력 인수가 없는지 확인
if [ "$#" -eq 0 ]; then
    echo "함수 안으로 들어와 있음."
else
    echo "함수 안으로 들어옴."
fi

# 함수 호출 및 명령어 실행
list_files "$@"

# 프로그램 종료 메시지
echo "프로그램을 종료합니다."

