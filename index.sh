#!/bin/bash
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
read -s -p "Enter Terminal password:" password

echo
sed "s/admin/`md5sum <<< $password`/g" terminallock.sh >> TerminalLock
sudo rm terminallock.sh
sudo chmod +x TerminalLock
sudo mv TerminalLock /usr/bin/
sudo echo TerminalLock >> $HOME/.bashrc
cd
sudo rm -r Terminallock_zenity
