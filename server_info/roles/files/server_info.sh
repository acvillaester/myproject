#!/bin/bash
# clear the screen
clear


# Check if connected to Internet or not

ping -c 1 google.com &> /dev/null && echo -e "Internet:  Connected" || echo -e "Internet:  Disconnected"


# Check OS Type
os=$(uname -o)
echo -e "Operating System Type :"  $os

# Check OS Release Version and Name
lsb_release -a

# Check Architecture
architecture=$(uname -m)
echo -e "Architecture :"  $architecture

# Check Kernel Release
kernelrelease=$(uname -r)
echo -e "Kernel Release :"  $kernelrelease

# Check hostname
echo -e "Hostname :"  $HOSTNAME

# Check Internal IP
internalip=$(hostname -I)
echo -e "Internal IP :"  $internalip

# Check External IP
externalip=$(curl -s ipecho.net/plain;echo)
echo -e "External IP :  "$externalip

# Check DNS
nameservers=$(cat /etc/resolv.conf | sed '1 d' | awk '{print $2}')
echo -e "Name Servers :"  $nameservers

# Check Logged In Users
who>/tmp/who
echo -e "Logged In users :"  && cat /tmp/who

# Check RAM and SWAP Usages
free -g | grep -v + > /tmp/ramcache
echo -e "Ram Usages :"
cat /tmp/ramcache | grep -v "Swap"
echo -e "Swap Usages :"
cat /tmp/ramcache | grep -v "Mem"

# Check Disk Usages
df -h| grep 'Filesystem\|/dev/sda*' > /tmp/diskusage
echo -e "Disk Usages :"
cat /tmp/diskusage

# Check Load Average
loadaverage=$(top -n 1 -b | grep "load average:" | awk '{print $10 $11 $12}')
echo -e "Load Average :"  $loadaverage

# Check System Uptime
tecuptime=$(uptime | awk '{print $3,$4}' | cut -f1 -d,)
echo -e "System Uptime Days/(HH:MM) :"  $tecuptime

