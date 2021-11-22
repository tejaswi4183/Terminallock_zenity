#! /bin/bash
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
echo
password=$(zenity --password --title="Login")
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
if [[ $password == "ramya" ]]
then
figlet "welcome"
echo
figlet "            ramya"
else
figlet "who are you"
sleep 3
kill $(pgrep terminal)
fi

