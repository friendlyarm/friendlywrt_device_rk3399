#!/bin/bash
set -eu
ROOTFS_DIR=$1

(cd ${ROOTFS_DIR} && {
	[ -e etc/modules.d/10-r8125 ] && rm etc/modules.d/10-r8125
	rm -f etc/modules.d/*-r8169
	echo 'r8169' > etc/modules.d/10-r8169
})
