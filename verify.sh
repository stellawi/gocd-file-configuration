#!/usr/bin/env bash

validTime=$(TZ=GMT date +"%r")
validVariable=$(cat $1 |  grep "environment" | awk '{print $2}')

echo $validVariable


if [ "$validVariable" == "kubernetes" ];then
    echo "Hey, it is invalid"
fi


