#!/bin/sh

# 폴더 이름 입력 받음
main_dir=$1

# 메인 폴더가 있는지 확인하고 없으면 생성
if [ ! -d "$main_dir" ]; then
    mkdir "$main_dir"
    echo "'$main_dir' 폴더가 생성되었습니다."
else
    echo "'$main_dir' 폴더가 이미 존재합니다."
fi

# 메인 폴더 안에 5개의 파일 생성
for i in 0 1 2 3 4; do
    touch "$main_dir/file$i.txt"
    echo "'file$i.txt' 파일이 생성되었습니다."
done

# 각 파일 이름으로 하위 폴더를 만들고 파일을 심볼릭 링크로 생성
for i in 0 1 2 3 4; do
    sub_dir="$main_dir/file$i"
    mkdir "$sub_dir"
    ln -s "../file$i.txt" "$sub_dir/file$i.txt"
    echo "'$sub_dir/file$i.txt' 심볼릭 링크가 생성되었습니다."
done

