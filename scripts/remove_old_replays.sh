#!/bin/bash
# Removes old replay files.

REPLAY_DIR="/srv/hlserver/common/replays"
MIN_AGE_DAYS=14
ACTION="-delete"
#ACTION="-print"

find ${REPLAY_DIR} -not -type d -mtime +${MIN_AGE_DAYS} ${ACTION}
