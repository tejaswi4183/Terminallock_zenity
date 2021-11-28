#!/bin/bash
#Checking Zenity is installed or not 
which zenity > /dev/null
if [ $? == 0 ]
then
echo "Zenity already installed"
else
ping -c 3 google.com
if [ $? == 0 ]
then 
sudo apt-get update -y
sudo apt-get install -y zenity
else
echo "Check your Internet Connection"
fi
fi
#Checking Figlet tool is present or not
which figlet > /dev/null
if [ $? == 0 ]
then 
echo "Figlet already Installed"
else
ping -c 3 google.com
if [ $? == 0 ]
then
sudo apt-get update -y
sudo apt-get install figlet
else
echo "Check your Internet connection"
fi
fi
#Check md5sum is present or not
which zenity > /dev/null
if [ $? == 0 ]
then
echo "md5sum is present"
else
ping -c 3 google.com
if [ $? == 0 ]
then 
sudo apt-get update -y
sudo apt-get install ucommon-utils
else
echo "Check your Internet Connection"
fi
fi
password=$(zenity --password --title="Set password")

echo
sed "s/teju/`md5sum <<< $password`/g" terminallock.sh > TerminalLock
sudo rm terminallock.sh
sudo chmod +x TerminalLock
sudo mv TerminalLock /usr/bin/
sudo echo TerminalLock >> $HOME/.bashrc
cd
sudo rm -r Terminallock_zenity
