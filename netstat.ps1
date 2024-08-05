#!/bin/bash

# List of servers to monitor
servers=("192.168.254.2, 192.168.254.6, 192.168.254.10, 192.168.254.14")

# Loop through servers and display active network connections and listening ports
foreach ($server in $servers) { 
    Write-Output "Checking $server"
    netstat -ano | findstr 389 | grep "$server"
}

done
Write-PrinterNfcTag