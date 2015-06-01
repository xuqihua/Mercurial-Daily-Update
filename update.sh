#!/bin/bash

SHELL_PATH=`dirname $0`
echo $SHELL_PATH
exit

DIRS=$(cat $SHELL_PATH/dirs.conf)

for dir in ${DIRS}
do
    echo "----------DIR: $dir start ---------"
    cd ${dir}
    hg pull -u
    echo "----------DIR: $dir end ---------"
done