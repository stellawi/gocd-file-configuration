#!/usr/bin/env bash

pushd /tmp
curl -O https://github.com/stedolan/jq/releases/download/jq-1.6/jq-1.6.tar.gz
tar xf jq-1.6.tar.gz
export PATH=$(pwd)/linux-amd64:$PATH
popd

validTime=$(TZ=GMT date +"%r")
validVariable=$(cat configuration.json | jq '.environment');

if [ $validVariable == "valid" ];then
  echo "Hey, it is invalid"
  exit 1
fi
