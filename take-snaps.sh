#!/bin/sh

CAPDIR=/home/root/caps

grep -qs '$CAPDIR.*tmpfs' /proc/mounts || ( mkdir -p $CAPDIR && mount -t tmpfs none $CAPDIR)
cd $CAPDIR

exec ~/uvccapture-0.5/uvccapture -t15 -x960 -y720 -c/home/root/rename-snap.sh
