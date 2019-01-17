#!/bin/bash
#exec &>>/var/log/work.log


./service0.sh &
./service1.sh &
./service2.sh
