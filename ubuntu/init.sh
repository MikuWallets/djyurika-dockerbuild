#!/bin/sh

service ssh start
service djyurika start
service restarter start
tail -f /dev/null

exit 0