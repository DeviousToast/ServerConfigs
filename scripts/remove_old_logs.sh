#!/bin/bash
# Removes old log files from multiple directories.

LOGS_DIRS="/srv/hlserver/mvm/tf/logs /srv/hlserver/tf2/tf/logs"
MIN_AGE_DAYS=14
ACTION="-delete"
#ACTION="-print"

for DIR in ${LOGS_DIRS}; do
  find ${DIR} -not -type d -mtime +${MIN_AGE_DAYS} ${ACTION}
done
