#!/bin/bash
if [ -z $1 ]; then
  echo "Usage: rpi <hostname>"
  exit 1
fi
ip=$(ping -c 1 $1.local | awk -F'[()]' '/PING/{print $2}')
ssh pi@$ip
