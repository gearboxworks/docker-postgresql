#!/bin/bash
# Created on 2020-02-18T20:03:12+1100, using template:postgresql.sh.tmpl and json:postgresql-10.12.json
test -f /etc/gearbox/bin/colors.sh && . /etc/gearbox/bin/colors.sh

c_ok "Started."

c_ok "Installing packages."
if [ -f /etc/gearbox/build/postgresql.apks ]
then
	APKS="$(cat /etc/gearbox/build/postgresql.apks)"
	apk update && apk add --no-cache ${APKS}; checkExit
fi

if [ -f /etc/gearbox/build/postgresql.env ]
then
	. /etc/gearbox/build/postgresql.env
fi

if [ ! -d /usr/local/bin ]
then
	mkdir -p /usr/local/bin; checkExit
fi

c_ok "Finished."
