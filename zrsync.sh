#!/bin/bash
remotedir="/home/szgov/"

function zrsync(){
    local ip="$1"
    shift
    for dir in "$@"
    do
        rsync -av -e "ssh -p 22" szgov@${ip}:${remotedir}${dir} /home/szgov
    done
}

###1.qxj
qxjip="10.210.133.188"
qxjdir="YBYJSJTQYBCDHDQXYB YBYJSJTQYBGGJQQXYB YBYJSJTQYBYJDNQHYB YJYBJTQX"
zrsync $qxjip $qxjdir
