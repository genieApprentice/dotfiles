#!/bin/sh

function get_file_by_http () {
    url=$1
    if type wget > /dev/null 2>&1; then
        wget $url
    elif type curl > /dev/null 2>&1; then
        curl -LO $url
    else
        exit 1
    fi
}

get_file_by_http https://busybox.net/downloads/binaries/1.30.0-i686/busybox
chmod 0755 busybox

CURRENT_DIR=$(pwd)
for command in $(./busybox --list); do
    ln -s $CURRENT_DIR/busybox $CURRENT_DIR/$command
done

