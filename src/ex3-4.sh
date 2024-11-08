#!/bin/sh

echo "리눅스 재미있나요? (yes / no)"
read answer

case $answer in
    yes|YES|y|Y)
        echo "다행입니다!"
        ;;
    no|NO|n|N)
        echo "아쉽군요"
        ;;
    *)
        echo "yes 또는 no로만 입력해 주세요."
        ;;
esac

