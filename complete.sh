#!/bin/bash

log="/var/log/fwcld.log"

/bin/sleep 10

echo "Status: Setup Complete" >> $log

echo "Command: MainText: Restart your computer to continue" >> $log

echo "Command: ContinueButtonRestart: Restart" >> $log

exit 0
