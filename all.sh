##author: Eddie Cho##
##This is a simple Bash shell script to update Ubuntu (Debian based UNIX/LINUX) along with priting info about system with sudo##
##It also updates packages and its necessary dependencies on base R##


#!/bin/bash

#print current date & time#
now=$(date)
echo "($now)"
echo "$(pwd)"

echo ""

echo "Welcome, Let's update stuff."

echo ""

#print user name & system version
. /etc/os-release; echo "Computer Name/Version/User: $(hostname) ${VERSION/*, /} @ ($USER)"

echo ""

#print computer architecture
echo "Computer Architecture: $(dpkg --print-architecture)"

echo ""

#print cores
echo "Computer Threads/Cores: $(nproc --all)"

echo ""

#print CPU temp & voltage
echo "CPU Name/Temperature/Voltage:"
sensors

#print availble hard disk space
echo "Free Disk Space:"
df -H /dev/sdb2

#pint free memory
echo ""
echo "Free Memory:" 
free -m

#print network connection satus
echo ""
echo "Network Connection Status:"
nmcli general status

#print IP address
echo " "
echo "Current IP address: $(hostname -I) "
echo ""

#update Ubuntu: overwrite asking permision
echo "Updating...Please wait"
sudo apt-get update && sudo apt-get -y upgrade
echo " "

#notify user update of Ubuntu
echo "Update done for $(hostname) @ ($USER). Now Updating R Script inititiated..."

#Invoke R update script
echo " "
sudo Rscript update.r

echo "ALL Updates Done. Have a great day."

