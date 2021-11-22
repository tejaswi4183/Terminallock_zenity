#!/bin/bash
read -s -p "Enter Terminal password:" password
echo
sed "s/admin/$password/g" terminallock.sh >> TerminalLock
rm terminallock.sh
sudo chmod +x TerminalLock
sudo mv TerminalLock /usr/bin/
sudo echo TerminalLock >> $HOME/.bashrc
cd
sudo rm -r Terminallock_zenity
