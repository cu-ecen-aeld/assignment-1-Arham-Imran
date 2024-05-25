#!/bin/bash

writefile=$1
writestr=$2

if [ $# -lt 2 ]; then
    echo "ERROR: Less than 2 arguments provided"
    exit 1
else
    mkdir -p $(dirname "${writefile}")
    echo "${writestr}" > "${writefile}"
fi

