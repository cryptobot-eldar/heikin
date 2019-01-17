#!/bin/bash
#exec &>>/var/log/work.log

while true
do
SERVICE0='heikin_ashi.py'

ps -ef | grep $SERVICE0 | grep -v grep
[ $?  -eq "0" ] && echo "$SERVICE0 process is running" || echo "$SERVICE0 process is not running, starting"; python /usr/local/bin/heikin_ashi.py



SERVICE1='heikin_day.py'

ps -ef | grep $SERVICE1 | grep -v grep
[ $?  -eq "0" ] && echo "$SERVICE1 process is running" || echo "$SERVICE1 process is not running, starting"; python /usr/local/bin/heikin_day.py




SERVICE2='btc_ha.py'

ps -ef | grep $SERVICE2 | grep -v grep
[ $?  -eq "0" ] && echo "$SERVICE2 process is running" || echo "$SERVICE2 process is not running, starting"; python /usr/local/bin/btc_ha.py


sleep 10
done
