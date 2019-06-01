#!/bin/bash

COUNTER=0
SLEEP_TIME=1

while true
do
	printf "%s\n" $COUNTER
	COUNTER=$((COUNTER+1))
	sleep $SLEEP_TIME
done
