#!/bin/bash
# Created on 2020-02-17T19:32:10+1100, using template:build-postgresql.sh.tmpl and json:docker-postgresql.json

# See gearboxworks/gearbox-base for details.
. /build/include-me.sh

c_ok "Started."

c_ok "Installing packages."
if [ -f /build/build-postgresql.apks ]
then
	APKS="$(cat /build/build-postgresql.apks)"
	apk update && apk add --no-cache ${APKS}; checkExit
fi

if [ -f /build/build-postgresql.env ]
then
	. /build/build-postgresql.env
fi

if [ ! -d /usr/local/bin ]
then
	mkdir -p /usr/local/bin; checkExit
fi

c_ok "Finished."
