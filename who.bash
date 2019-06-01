#!/bin/bash

PREVIOUS=$(ls | grep usuarios- | sort -r | head -n 1 | awk -F- '{print $2}')

if [ -n "$PREVIOUS" ] # checkea si PREVIOUS es un n (if)  o vacío (else)
then
    COUNTER=$(($PREVIOUS+0))
else
    COUNTER=0
fi

SLEEP_TIME=60

while true
do 
	COUNTER=$((COUNTER+1))
    DATE=$(date +%d%m%y-%H%M%S)
    echo $ARCHIVO
	who | while read line
    do
        TO_PRINT=$(echo $line | awk -F' ' '{print $1}')
        printf "%s\n" $TO_PRINT 
        ARCHIVO="usuarios-${COUNTER}-${DATE}"
        echo $TO_PRINT >> $ARCHIVO
	done
	sleep $SLEEP_TIME
done


# ls | grep usuarios- | sort -r | head -n 1 | awk -F- '{print $2}'
