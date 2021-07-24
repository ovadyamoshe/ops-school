#!/bin/bash
#add fix to exercise2 here

# PATH TO YOUR HOSTS FILE
ETC_HOSTS=/etc/hosts


# Hostname to add/remove.
HOSTNAME=www.ascii-art.de

function removehost() {
    if [ -n "$(grep $HOSTNAME /etc/hosts)" ]
    then
        echo "$HOSTNAME Found in your $ETC_HOSTS, Removing now...";
        sudo sed -i".bak" "/$HOSTNAME/d" $ETC_HOSTS
    else
        echo "$HOSTNAME was not found in your $ETC_HOSTS";
    fi
}
removehost
