#!/bin/bash
#exec &>>/var/log/work.log


./restart.sh &
./service0.sh &
./service1.sh &
./service2.sh
