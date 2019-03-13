#!/bin/bash
SERVICE_OK='0'
STARTED=$(/etc/init.d/srv1cv83 status | grep script | awk '{print $3}')
RUNNING=$(/etc/init.d/srv1cv83 status | grep agent | awk '{print $2}')
if [[ $STARTED="STARTED." && $RUNNING="RUNNING." ]];
    then
    SERVICE_OK='1'
fi
echo $SERVICE_OK