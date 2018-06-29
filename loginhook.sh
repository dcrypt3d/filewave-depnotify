#!/bin/bash

CURRENTUSER=$(ls -l /dev/console | awk '{ print $3 }')

log="/var/log/fwcld.log"

#caffeinate
/usr/bin/caffeinate -d -i -m -u &
caffeinatepid=$!

# Setup DEPNotify
echo "Command: MainTitle: Welcome to your new computer" >> $log
echo "Command: MainText: Your computer is being configured" >> $log
echo "Command: Image: /Applications/DEPNotify.app/Contents/Resources/image.png" >> $log

echo "Status: Starting..."

/usr/bin/sudo sudo -u "$CURRENTUSER" /Applications/DEPNotify.app/Contents/MacOS/DEPNotify -filewave -fullScreen &

echo "Status: Installing software..." >> $log

exit 0

