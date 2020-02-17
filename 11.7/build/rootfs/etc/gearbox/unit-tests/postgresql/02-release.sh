#!/bin/bash
# Created on 2020-02-17T19:59:20+1100, using template:02-release.sh.tmpl and json:pg-11.json

# See gearboxworks/gearbox-base for details.
. /build/include-me.sh

c_ok "Gearbox[postgresql-11.7]: Release test started."

if id -u gearbox
then
	c_ok "Gearbox[postgresql-11.7]: Gearbox user found."
else
	c_err "Gearbox[postgresql-11.7]: Gearbox user NOT found."
fi

if id -g gearbox
then
	c_ok "Gearbox[postgresql-11.7]: Gearbox group found."
else
	c_err "Gearbox[postgresql-11.7]: Gearbox group NOT found."
fi

c_ok "Gearbox[postgresql-11.7]: Release test finished."

