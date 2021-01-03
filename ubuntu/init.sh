#!/bin/sh

service cron start
service ssh start
service djyurika start
service restarter start
tail -f /dev/null

exit 0