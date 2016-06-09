#!/bin/sh
cd /tmate-slave
if [ -n "${HOST}" ]; then
  hostopt="-h ${HOST}"
fi

/etc/my_init.d/message.sh > /data/server_info.txt

./tmate-slave $hostopt -p ${PORT?2222} 2>&1
