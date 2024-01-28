#!/bin/bash

factorial()
{
    local i=$1
    if [ $i -eq 0 ]
    then
        echo 1
    else
        local j=$i - 1
        local k=`factorial $j`
        echo  `expr $i \* $k`
    fi
}

if [ -z $1 ]
then
   echo "Need one parameter."
   exit 1
fi

rtn=`factorial $1`
echo $rtn
