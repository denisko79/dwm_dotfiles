#!/bin/sh
cat /sys/class/power_supply/BAT0/capacity 2>/dev/null | sed 's/$/%/'
