#!/bin/bash
# syscheck.sh — Quick system diagnostics

echo "== Uptime =="
uptime

echo -e "\n== Load Average =="
cat /proc/loadavg

echo -e "\n== Memory Usage =="
free -h

echo -e "\n== Swap Usage =="
swapon --show

echo -e "\n== Root Disk Usage =="
df -h /

echo -e "\n== Top Processes by Memory =="
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 10

echo -e "\n== Network Interfaces =="
ip a

echo -e "\n== Listening Ports =="
ss -tuln

echo -e "\n== Recent Established Connections =="
ss -tn state established | head -n 10
