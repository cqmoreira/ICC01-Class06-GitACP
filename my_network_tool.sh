#!/bin/bash

# My NetWork Tool

echo " Welcome to the Networking Tool! "

    echo " Please Select An Option "

    echo "1) Check Network Interface Information "
    echo "2) Ping a Host "
    echo "3) Port Scan with Nmap "
    echo "4) Display Routing Table "
    echo "5) Traceroute to Host "
    echo "6) Exit "
    echo " Please Enter Your Option [1-6]: "

    read -p " Select a option " option

    if [ $option -eq "1" ]; then 
    ip a

    elif [ $option -eq "2" ]; then
    read -p " Enter the host IP address " host
    result=$(ping -c 4 "$host")
    echo "$result"

    elif [ $option -eq "3" ]; then
    read -p " Port Scan with Nmap " host
    nmap -p $host

    elif [ $option -eq "4" ]; then
    echo " Display Routing Table "
    ip route show

    elif [ $option -eq "5" ]; then
    read -p " Traceroute to host " host
    echo "Tracing Route to $host"
    traceroute "$host"

    elif [ $option -eq "6" ]; then
    exit 0

    else
    echo " Invalid option. Please enter a number between 1 to 6 "
    exit 1

    fi





