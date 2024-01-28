#!/bin/bash

for i in $(seq -f "%02g" 1 2)
do
    useradd user$i
	echo "user$i-`echo $RANDOM | md5sum | cut -c 1-5`" | passwd --stdin user$i >> useradd.log
done