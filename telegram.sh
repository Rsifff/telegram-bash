#!/bin/bash

source telegram.functions.sh

DATE=$(date "+%F %H:%M:%S")
IP=$(echo $SSH_CLIENT | cut -d " " -f1)
TEXT="$DATE
User : $USER 
IP : $IP"

telegram_text_send "$API" "$CHATID" "$KEY" "markdown" "$TEXT"
