# This script will create and manage user in redhat and centos Linux servers:


<<mm
This script will create and manage users
     in redhat and centos Linux servers
Run only as root user or users with sudo access
mm

echo Please enter your username

read newUser

sudo adduser $newUser

echo Please enter your password

read -s password

echo "$password" | sudo passwd "$newUser" --stdin

echo Please enter your last 4 SSN digit

read -s SSN

echo Congratlations your username is $newUser

# verify if the user account was created

id  $newUser

grep $newUser  /etc/passwd

tail -3 /etc/passwd
