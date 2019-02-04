#!/bin/bash

sleep 60
ps x | awk {'{print $1}'} | awk 'NR > 1' | xargs kill