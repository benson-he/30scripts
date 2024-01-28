#!/bin/bash

url=$1
dir=$2

download1(){
    cd $dir >> /dev/null 2>&1
    if[ $? -ne 0 ];then
        read -p "$dir No such file or derectory,create?(y/n)" answer
    if[ "$answer"=="y" ];then
        mkdir -p $dir
        cd $dir
        wget $url
    if [ $? -ne 0 ];then
        return "52"
    fi
    else
    return "51"
    fi
	fi
}

download(){
    [ ! -d $dir ] && read -p "$dir No such file or derectory,create?(y/n)" answer
    if [ "$answer"=="y" ];then
        mkdir -p $dir
	else
	    return "51"
	    exit 0
	fi
    cd $dir
    wget $url
    if [ $? -ne 0 ];then
        return "52"
    else
        return "51"
	fi
}

download $url $dir
echo $?