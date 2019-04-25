#!/usr/bin/env bash

pushd /tmp
wget https://github.com/stedolan/jq/releases/download/jq-1.6/jq-1.6.tar.gz
tar -xvzf jq-1.6.tar.gz
export PATH=$(pwd)/linux-amd64:$PATH
popd

validTime=$(TZ=GMT date +"%r")
validVariable=$(cat $1 | jq '.environment')

jq
cat $1
echo $validVariable

if [[ $validVariable == "kubernetes" ]];then
    echo "Hey, it is invalid"
    exit
fi


