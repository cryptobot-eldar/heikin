#!/bin/bash
#exec &>>/var/log/work.log

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



SERVICE2='btc_ha.py'

if ps ax | grep -v grep | grep $SERVICE2 > /dev/null
then
    echo "$SERVICE2 service running "
else
    echo there is no such "$SERVICE2 service, starting"
    python /usr/local/bin/btc_ha.py
fi

sleep 10
done
