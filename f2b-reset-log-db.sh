#!/bin/bash

# Bash Script by https://gist.github.com/mitchellkrogza
# ************************************************************
# This script clears the log file and database of Fail2Ban
# This resets Fail2Ban to a completely clean state
# Useful to use after you have finished testing all your jails 
# and completed your initial setup of Fail2Ban and are now
# putting the server into LIVE mode
# ************************************************************

# Please Set your log file and sqlite db locations
# Locations below are common on Ubuntu and Debian based systems

F2Blog="/var/log/fail2ban.log"
F2Bdb="/var/lib/fail2ban/fail2ban.sqlite3"

# Now let us clean up
echo "Stopping Fail2Ban Service"
sudo service fail2ban stop
echo "Truncating Fail2Ban Log File"
sudo truncate -s 0 $F2Blog
echo "Deleting Fail2Ban SQLite Database"
sudo rm $F2Bdb
echo "Restarting Fail2Ban Service"
sudo service fail2ban restart
echo "All Done"

# Thats all