#!/bin/bash

function deploy {
	rsync -vP -r --exclude $1/.git $1 hoenir@valhalastage.ddns.net:/home/hoenir/srv/http
}

genpasswd() {
        local l=$1
        [ "$1" == "" ] && 1=20
        tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${1} | xargs
}
