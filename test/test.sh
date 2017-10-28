#!/usr/bin/env bash
set -e # halt script on error

# verify all expected processes are running
CONTAINER="vsftpd"
FILTER="vsftpd"
COUNT="1"

PS=`docker exec $CONTAINER "/bin/ps" | egrep $FILTER | wc -l | sed 's/^ *//'`
if [ $PS != $COUNT ]
then
  echo "FAIL: was expecting $COUNT processes, found: $PS"
  docker exec $CONTAINER "/bin/ps" | egrep $FILTER
  exit 1
fi

echo "SUCCESS: expecting $COUNT processes, found: $PS"
docker exec $CONTAINER "/bin/ps" | egrep $FILTER
exit 0
