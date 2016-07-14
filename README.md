# fail2ban-useful-scripts
A collection of useful scripts for automation of &amp; easing maintenance of Fail2Ban


## f2b-badips-to-hostsdeny.sh
Bash script for blocking IPs which have been reported to http://www.badips.com
This writes IP entries to your hosts.deny file on Ubuntu and immediately blocks
all the Bad Ip's it collects from accessing SSH on your server

## f2b-reset-log-db.sh
This script clears the log file and database of Fail2Ban
This resets Fail2Ban to a completely clean state
Useful to use after you have finished testing all your jails 
and completed your initial setup of Fail2Ban and are now
putting the server into LIVE mode