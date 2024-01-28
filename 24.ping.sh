#!/bin/bash

for ip in $(seq 1 10)
do
    ping -c 1 192.168.233.$ip &> /dev/null
    if [ "$?" == "0" ];then
        echo "192.168.1.$ip UP"
    else
        echo "192.168.1.$ip DOWN"
    fi
done