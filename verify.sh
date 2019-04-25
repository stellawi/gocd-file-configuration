#!/usr/bin/env bash

validTime=$(TZ=GMT date +"%r")
validVariable=$(cat $1 |  grep "environment" | awk '{print $2}' | sed 's/"//g')

if [ $validVariable == "kubernetes" ]
then
    echo "Hey, it is for kubernetes"
    exit 1
else
    echo "Hey, it is for zip"
fi


