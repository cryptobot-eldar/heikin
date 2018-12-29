#!/bin/bash
#exec &>>/var/log/work.log
#exec "$@"
while true
do
SERVICE0='heikin_ashi.py'

if ps ax | grep -v grep | grep $SERVICE0 > /dev/null
then
    echo "$SERVICE0 service running "
else
    echo there is no such "$SERVICE0 service, starting"
    python /usr/local/bin/heikin_ashi.py
fi



SERVICE1='heikin_day.py'

if ps ax | grep -v grep | grep $SERVICE1 > /dev/null
then
    echo "$SERVICE1 service running "
else
    echo there is no such "$SERVICE1 service, starting"
    python /usr/local/bin/heikin_day.py
fi

sleep 10
done