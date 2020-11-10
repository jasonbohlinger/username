#! /bin/bash
# username.sh
# Jason Bohlinger
echo "Enter a username: "
echo "Only lowercase letters, digits, and underscore."
echo "The username must start with a lower case letter"
echo "The username must contain at least 3 but no more than 12 characters"
read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"
