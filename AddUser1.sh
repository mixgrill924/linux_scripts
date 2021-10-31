#!/bin/bash
#
# Name:    Samuel Barbosa
# Date:    04/10/2018
# Purpose: ...
#
# CODE
addUsers() {
echo "Select Mode:"
echo -e "Enter '1' to add users manually"
echo -e "Enter '2' to list users from file"
# new line break
echo -e "\n"
# get user input
read $add_opt
case $add_opt in
1)
echo -e "Please enter user name:"
read usr_name
echo -e "Please enter user group:"
read usr_group
groupadd $usr_group
useradd -g $usr_group -m $usr_name
echo -e "Enter the password for $usr_name"
passwd $usr_name ;;
2)


#read -e "Enter option: 1 or 2"
# give the result a variable name of option
#read option
# if answer is one 
#if []
#echo "Usernames: ${usernames[0]}, ${usernames[1]}"
done
}
main
exit 0
