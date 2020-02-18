#!/bin/bash
# Created on 2020-02-18T20:03:12+1100, using template:01-base.sh.tmpl and json:postgresql-10.12.json

p_info "postgresql" "Release test started."

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

p_info "postgresql" "Release test finished."

