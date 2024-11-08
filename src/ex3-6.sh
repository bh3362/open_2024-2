#!/bin/sh

#폴더 이름 입력 받음
dir_name=$1

# 폴더가 있는지 확인하고 없으면 생성
if [ ! -d "$dir_name" ]; then
    mkdir "$dir_name"
    echo "폴더 '$dir_name'이 생성되었습니다."
else
    echo "폴더 '$dir_name'이 이미 존재합니다."
fi

# 5개의 파일 생성
for i in 1 2 3 4 5; do
    touch "$dir_name/file$i.txt"
    echo "file$i.txt 파일이 생성되었습니다."
done

# 폴더 내 파일 압축
tar -cvf "$dir_name/files.tar" -C "$dir_name" file1.txt file2.txt file3.txt file4.txt file5.txt
echo "파일들이 압축되어 '$dir_name/files.tar'로 저장되었습니다."

# 압축 해제
mkdir "$dir_name/unpacked"
tar -xvf "$dir_name/files.tar" -C "$dir_name/unpacked"
echo "파일들이 '$dir_name/unpacked' 폴더에 압축 해제되었습니다."

