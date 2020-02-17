#!/bin/bash
# Created on 2020-02-17T19:32:10+1100, using template:01-base.sh.tmpl and json:docker-postgresql.json

# See gearboxworks/gearbox-base for details.
. /build/include-me.sh

c_ok "Gearbox[postgresql]: Release test started."

if id -u gearbox
then
	c_ok "Gearbox[postgresql]: Gearbox user found."
else
	c_err "Gearbox[postgresql]: Gearbox user NOT found."
fi

if id -g gearbox
then
	c_ok "Gearbox[postgresql]: Gearbox group found."
else
	c_err "Gearbox[postgresql]: Gearbox group NOT found."
fi

c_ok "Gearbox[postgresql]: Release test finished."

