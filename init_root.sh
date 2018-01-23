#!/bin/bash

source config.sh

[ ! "$(whoami)" == "root" ] && echo "Run this script as root " && exit 1

[ ! -d "$WORKSPACE" ] && mkdir -p $WORKSPACE
chown -R ${USER_DAEMON}. $WORKSPACE
chmod -R 700 $WORKSPACE
