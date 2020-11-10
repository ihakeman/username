#! /bin/bash
# username.sh
# Ian Hakeman
echo "Enter a username: "
echo "Use lower case characters, digits, and underscores only"
echo "It must start with a lower case character"
echo "It must contain at least 3 but not more than 12 characters"

read -r USERNAME
while echo "$USERNAME" | grep -Ev "^[a-z]{1}[a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Enter a username: "
	read -r USERNAME
done
echo "Thank you"
