add_users()
{
	ROOT_UID=0
	if ["$UID" -ne "$ROOT_UID"]; then
		echo "You must be logged in as root to run this script!"
		exit
	fi
	echo "Verification successful.\nYou are root!"

	echo -e "Please select a mode:\n"
	echo -e "1. Add users manually\n"
	echo -e "2. Add users from text file\n"

	read add_opt
	case $add_opt in

	1) echo -e "Please enter user name..."
	read usr_name
	echo -e "Please enter the user group..."
	read usr_group
	groupadd $usr_group
	useradd -g $usr_group -m $usr_name
	echo -e "Please enter the $usr_name's password..."
	passwd $usr_name ;;

	2) echo "Present working directory is `pwd`/users.txt\n"
	echo -e "Do you want to use the aforementioned path?\n"
	echo -e "Yes (1) -or- No (2)\n"
	
	read yesNo
	if [$yesNo == 1]; then
		Path=$($pwd)usernames.txt
	echo -n "Enter correct path to file..."
		read Path
	fi
	if [-e $Path]; then #if the file 'username' specified exists
	Username=lucky
        num=1
		while [$username != "END"]
			do
			Username='grep "$num" $Path | cut -f2 d:'
	
	if [$Username == "END"]; then
		clear
		main
	fi
		#Adds user to system
		useradd -g $Group -m $Username

	if [-e $Path]; then 		#If the file user specified exists
	num=1
	Username=lucky		
		while [$Username != "EOF"]
		do
		Username=`grep "$num" $Path | cut -f2 -d:` # Extract Username from text file
	
		if [$Username == "EOF"]; then
	    		clear
		fi
