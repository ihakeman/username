#! /bin/bash
# username.sh
# Ian Hakeman
echo "Enter a username: "
echo "Use lower case characters, digits, and underscores only"
echo "It must start with a lower case character"
echo "It must contain at least 3 but not more than 12 characters"

read USERNAME
while echo "$USERNAME" | egrep -v "^[0-9]{5}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"
