#!/bin/bash

#while true; do
#  date '+ %I:%M:%S %p' > /home/lux/dev/scripts/time.txt
#  date '+ %a %B %d, %Y' > /home/lux/dev/scripts/date.txt
#  sleep 1s
#done &

while true; do
  BAT0=$(/home/lux/dev/scripts/dwmscripts/battery0.sh)
  BAT1=$(/home/lux/dev/scripts/dwmscripts/battery1.sh)
  TIME=$(/home/lux/dev/scripts/dwmscripts/time.sh)
  DATE=$(/home/lux/dev/scripts/dwmscripts/date.sh)  
  SOUND=$(/home/lux/dev/scripts/dwmscripts/sound.sh)  
  NETNAME=$(/home/lux/dev/scripts/dwmscripts/netname.sh)
  NETSTRENGTH=$(/home/lux/dev/scripts/dwmscripts/netstrength.sh)

  xsetroot -name "  $NETNAME $NETSTRENGTH%  $BAT0%/$BAT1%   $SOUND $DATE $TIME"

  sleep 1s
done &
