#!/usr/bin/env bash

validTime=$(TZ=GMT date +"%r")
validVariable=$(cat $1 |  grep "environment" | awk '{print $2}')

jq
cat $1
echo $validVariable

if [[ $validVariable == "kubernetes" ]];then
    echo "Hey, it is invalid"
    exit
fi


