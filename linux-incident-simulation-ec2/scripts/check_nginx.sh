#!/bin/bash

SERVICE="nginx"
LOGFILE="nginx_monitor.log"

if ! systemctl is-active --quiet $SERVICE
then
    echo "$(date) - $SERVICE is down - restarting..." >> $LOGFILE
    sudo systemctl start $SERVICE
else
    echo "$(date) - $SERVICE is running" >> $LOGFILE
fi