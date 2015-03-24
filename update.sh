#!/bin/bash

#DIRS=("./dirs.conf")
DIRS=$(cat ./dirs.conf)
echo -e "\e[1;31m skyapp exist \e[0m" //红色
for dir in ${DIRS}
do
    echo "----------DIR: $dir start ---------"
    cd ${dir}
    hg pull -u
    echo "----------DIR: $dir end ---------"
done