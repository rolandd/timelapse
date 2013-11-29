#!/bin/sh
mv $1 s-`date -Iseconds -u|sed -e 's/:/./g' -e 's/T/-/' -e 's/+.*/Z/'`.jpg
