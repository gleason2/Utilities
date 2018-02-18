#!/bin/bash
ip=$(ping -c 1 $1.local | awk -F'[()]' '/PING/{print $2}')
ssh pi@$ip
