#!/bin/bash

COMMAND="func"
ARCH=$(case $(uname -m) in x86_64) echo -n amd64 ;; aarch64) echo -n arm64 ;; *) echo -n $(uname -m) ;; esac)
OS=$(uname | awk '{print tolower($0)}')
DL_URL=https://github.com/boson-project/func/releases/latest/download/func_linux_amd64.gz

mkdir /opt/$COMMAND
cd /opt/$COMMAND

curl -sSL -o /opt/$COMMAND/$COMMAND.gz ${DL_URL}
gunzip $COMMAND.gz
ln -s $PWD/$COMMAND /usr/local/bin/
chmod +x $PWD/$COMMAND