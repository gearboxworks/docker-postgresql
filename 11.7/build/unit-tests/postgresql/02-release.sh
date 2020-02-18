#!/bin/bash
# Created on 2020-02-18T19:15:25+1100, using template:02-release.sh.tmpl and json:postgresql-11.7.json

p_info "postgresql-11.7" "Release test started."

if id -u gearbox
then
	c_ok "Gearbox user found."
else
	c_err "Gearbox user NOT found."
fi

if id -g gearbox
then
	c_ok "Gearbox group found."
else
	c_err "Gearbox group NOT found."
fi

p_info "postgresql-11.7" "Release test finished."
