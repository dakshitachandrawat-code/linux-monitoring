#!/bin/bash
##CPU Monitoring##
top -bn1| grep "%Cpu" | awk '{for (i=1;i<=NF;i++) if ($i=="id,") idle=$(i-1); print "CPU Idle:", idle"%"; print "CPU Used:", 100-idle"%"}'

##Memory Monitoring##
free -m | awk '/Mem:/ {printf "Memory Used: %.0f%%\n", (($2-$7)/$2)*100}'