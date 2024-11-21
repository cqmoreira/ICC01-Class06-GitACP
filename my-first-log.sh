#!/bin/bash

Log_file="/root/user_activity.log"

Timestamp=$(date +"%Y-%m-%d %H:%M:%S")

User=$(whoami)

Custom_Message="This is my first log"

echo "$Timestamp - User: $User Log Entry: $Custom_Message" >> "$Log_file"


