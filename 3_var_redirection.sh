#!/bin/bash

#variable in shell script
echo $RANDOM  # range 0-32767
echo $UID #user ID of the user logged in

# generate a random number b/w 1 to 6
NO=$(( $RANDOM%6 + 1))
echo "Number is $NO"

# check if user is root or not
if [[ $UID -eq 0 ]]
then
  echo "root user"
else
  echo "not a root user"
fi

# redirection in scripts > >>
ls > items.txt
pwd >> items.txt
ping -c 1 www.google.com > redirect.log

# in case if not want to print the output of a command on terminal or write in a file, we can redirect output to /dev/null i.e that content is vanished
cd /root &> /dev/null

# printing name of script
echo "name of script is: $0"
