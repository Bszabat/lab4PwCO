#!/bin/sh

DATE=$(date '+%Y-%m-%d %H:%M:%S')
echo Data utworzenia: ${DATE}  > /logs/info.log
cat /sys/fs/cgroup/memory/memory.usage_in_bytes  | awk '{ byte =$1 /1024/1024; print "Dostępna pamięć: " byte " MB" }' >> /logs/info.log