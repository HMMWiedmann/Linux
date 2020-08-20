#!/bin/bash

memavailable=`free -m | grep Mem | awk '{print $7}'`; 
memtotal=`free -m | grep Mem | awk '{print $2}'`; 

memavailablepercent="$(($memavailable * 100 / $memtotal))"

echo "$memavailable mb ist verfuegbar von $memtotal mb"
echo "/ $memavailablepercent % /"

if [[ $memavailablepercent -gt $1 ]]
then
  exit 0
else
  exit 1001
fi