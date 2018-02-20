#!/bin/bash

# This is a program that keeps your address book up to date.

friends="/var/tmp/michel/friends"

echo "Hello, "$USER".  This script will help you launch a Kubernetes App"

echo -n "Enter your name and press [ENTER]: "
read name
echo -n "Enter your app name and press [y]: "
read -n 1 appname
echo

grep -i "$appname" "$friends"

if  [ $? == 0 ]; then
  echo "You have already launched the app, quitting."
  exit 1
elif [ "$appname" == "y" ]; then
  echo "You are added to appname list."
  exit 1
else
  echo -n "How old are you? "
  read age
  if [ $age -lt 25 ]; then
    echo -n "Which colour of hair do you have? "
    read colour
    echo "$name $age $colour" >> "$friends"
    echo "You are added to Michel's friends list.  Thank you so much!"
  else
    echo "You are added to Michel's friends list."
    exit 1
  fi
fi
