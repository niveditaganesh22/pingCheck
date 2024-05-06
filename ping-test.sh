#!/bin/bash

echo "---------------------------------------------------"
echo "PING TEST FOR WEBSITES"
echo "---------------------------------------------------"

#Fetching the host id or address from the user

echo "---------------------------------------------------"
echo "Enter the website or IP address"
echo "---------------------------------------------------"
read host

#Checking if host is empty and exiting if so

if [ -z "$host" ]; then
        echo "---------------------------------------------------"
        echo "Error: No host provided."
        echo "---------------------------------------------------"
        exit 1
fi
#Checking ping

ping -c 10 "$host"

#Checking if host is reachable or not

if [ $? -eq 0 ]; then
        echo "---------------------------------------------------"
        echo "The host: $host is reachable. Ping Successful"
        echo "---------------------------------------------------"
else
        echo "---------------------------------------------------"
        echo "The host: $host is not reachable. Ping failed"
        echo "---------------------------------------------------"
fi
