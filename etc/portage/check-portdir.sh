#!/bin/bash

source /etc/portage/util-functions.sh

if [[ -z ${PORTDIR} || "$(dirname ${PORTDIR})" == "/" ]] ; then
	die "PORTDIR empty or pointing to root!"
elif [[ ! -e ${PORTDIR} ]] ; then
	die "${PORTDIR} does not exist!"
fi
