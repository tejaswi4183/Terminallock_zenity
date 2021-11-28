#! /bin/bash

echo
password=$(zenity --password --title="Login")

if [[ $password == $a ]]
then
figlet "welcome teju"

else
figlet "who are you"
sleep 3
kill $(pgrep terminal)
fi

