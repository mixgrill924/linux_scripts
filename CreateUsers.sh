echo "Select a mode:
1. Add users manually
2. Get users from text file"
read input
if [[ $input == "1" ]]; then
	read -p "Enter username: " username
	read -s -p "Enter password: " password
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$username exists!"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "password")'$password)
		useradd -m -p $pass $username
		[ $? -eq 0 ] && echo "User was successfully created!" || echo "Creation of user failed!"
	fi
fi

if [[ $input == "2" ]]; then
	for i in $( cat users);
	do
	useradd $i; done
		echo "All users were successfully created!"
fi
