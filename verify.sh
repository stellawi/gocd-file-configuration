#!/usr/bin/env bash
su -
apk update && apk add jq 

validTime=$(TZ=GMT date +"%r")
echo $1
{
  validVariable=$(cat $1 | jq '.environment')
  echo validVariable
} || {
  exit 1
}


if [[ $validVariable == "valid" ]];then
  echo "Hey, it is invalid"
  exit 1
fi
