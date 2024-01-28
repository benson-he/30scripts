#!/bin/bash

cat account1.txt | while read line;do
    username=`echo $line | awk '{print $1}'`
    password=`echo $line | awk '{print $2}'`
    useradd $username
    echo $password | passwd --stdin $username
    done