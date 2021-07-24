#!/bin/bash
#add fix to exercise5-server1 here
sudo apt install sshpass
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
sshpass -p vagrant ssh-copy-id -i ~/.ssh/id_rsa vagrant@server2



