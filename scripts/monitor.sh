#!/bin/bash
##CPU Monitoring##
top -bn1| grep "%Cpu" | awk '{for (i=1;i<=NF;i++) if ($i=="id,") idle=$(i-1); print "CPU Idle:", idle"%"; print "CPU Used:", 100-idle"%"}'