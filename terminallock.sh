#! /bin/bash

echo
password=$(zenity --password --title="Login")
if [[ `md5sum <<< $password` == "teju" ]]
then
figlet "welcome teju"

else
figlet "who are you"
sleep 3
kill $(pgrep terminal)
fi

