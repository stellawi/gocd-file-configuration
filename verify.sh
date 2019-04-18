#!/usr/bin/env bash

validTime=$(TZ=GMT date +"%r")
echo $validTime
validVariable="invalid"

if [ validVariable="invalid" ]
  then
    echo "Hey, it is invalid"
    exit 1
fi
