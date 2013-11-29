#!/bin/sh

SNAPDIR=/home/roland/Snaps
CAMHOST=root@snoopycam

mkdir -p $SNAPDIR
ssh -fN $CAMHOST

while true; do
    snaps=`ssh root@snoopycam ls caps/* | grep -v snap.jpg`
    for s in $snaps; do
	scp $CAMHOST:$s $SNAPDIR && ssh $CAMHOST rm -f $s
    done
    sleep 15
done
