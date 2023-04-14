#!/bin/bash

# Set the number of seconds in 12 hours
SECONDS_IN_12_HOURS=21600

while true
do
  pkill -HUP gunicorn
  sleep $SECONDS_IN_12_HOURS
done
