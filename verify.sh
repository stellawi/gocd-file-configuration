#!/usr/bin/env bash

apk update && apk add jq 

validTime=$(TZ=GMT date +"%r")
validVariable=$(cat $1 | jq '.environment')

if [[ $validVariable == "valid" ]];then
  echo "Hey, it is invalid"
  exit 1
fi
