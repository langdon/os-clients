#!/bin/bash

COMMAND="operator-sdk"
ARCH=$(case $(uname -m) in x86_64) echo -n amd64 ;; aarch64) echo -n arm64 ;; *) echo -n $(uname -m) ;; esac)
OS=$(uname | awk '{print tolower($0)}')
DL_URL=https://github.com/operator-framework/operator-sdk/releases/download/v1.8.0
BINARY="operator-sdk_${OS}_${ARCH}"

mkdir /opt/$COMMAND
cd /opt/$COMMAND

curl -sSL -o /opt/$COMMAND/$COMMAND ${DL_URL}/$BINARY
ln -s $PWD/$COMMAND /usr/local/bin/
chmod +x $PWD/$COMMAND