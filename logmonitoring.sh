#!/bin/bash
# Log Monitoring Script

LOG_FILE="/var/log/syslog"
#ALERT_EMAIL="shettar1278@gmail.com"
#THRESHOLD=1000
ERROR_COUNT=$(grep -c "error" $LOG_FILE)
if [ $ERROR_COUNT -gt $THRESHOLD ]; then
    echo "High number of errors detected: $ERROR_COUNT" 
    #| mail -s "Log Alert" $ALERT_EMAIL
fi


