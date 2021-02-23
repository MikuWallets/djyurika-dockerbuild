#!/bin/sh

service cron start
service ssh start
service djyurika start
service djyurika2 start
service restarter start
service ddj400 start
tail -f /dev/null

exit 0
