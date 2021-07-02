#!/bin/bash

COMMAND="kn"
ARCH=$(case $(uname -m) in x86_64) echo -n amd64 ;; aarch64) echo -n arm64 ;; *) echo -n $(uname -m) ;; esac)
OS=$(uname | awk '{print tolower($0)}')
DL_URL=https://storage.googleapis.com/knative-nightly/client/latest/kn-linux-amd64

mkdir /opt/$COMMAND
cd /opt/$COMMAND

curl -sSL -o /opt/$COMMAND/$COMMAND ${DL_URL}
ln -s $PWD/$COMMAND /usr/local/bin/
chmod +x $PWD/$COMMAND
