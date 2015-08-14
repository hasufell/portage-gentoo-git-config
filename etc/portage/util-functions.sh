#!/bin/bash

source /etc/init.d/functions.sh

die() {
	eerror "$*"
	exit 1
}
