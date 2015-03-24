#!/bin/bash

DIRS=$(cat ./dirs.conf)

for dir in ${DIRS}
do
    echo "----------DIR: $dir start ---------"
    cd ${dir}
    hg pull -u
    echo "----------DIR: $dir end ---------"
done