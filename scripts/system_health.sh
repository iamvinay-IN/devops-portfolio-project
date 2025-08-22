#!/bin/bash

# simple script to check system health

echo "--- System Health Report ---"
echo "Date: $(date)"
echo "----------------------------"

echo "### CPU Usage ###"
# 'top command to get a snapshot of CPU usage
top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print "CPU Idle: "$1"%"}'

echo "### Memory Usage ###"
# 'free' command to get memory details
free -h

echo "### Disk Usage ###"
# 'df' command to get disk usage
df -h
