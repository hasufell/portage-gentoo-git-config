#!/bin/bash

source /etc/init.d/functions.sh

eend_die() {
	eend "$@"
	[[ $1 -ne 0 ]] && exit $1
}

die() {
	eerror "$*"
	exit 1
}
