# A function is a piece of code that perfoms  a specific task and avoids repetition. 

# functions avoid duplication in coding
usermgt() {

    echo please enter the lastName of the user
    read name
    sudo useradd $name
    echo "assign a temporal password to;  $name  "
    sudo passwd $name
  }
  # invoke the function
 echo create an  account for the  TeamLead.
  usermgt
 echo create an  account for the 2nd member of your team.
  usermgt
 echo create an account for the 3rd member of your team.
  usermgt


##################
fn2.sh 
#!/bin/bash
check()
{
if [ -e /etc/passwd ]
then
 echo "It exist. Please proceed ..."
 grep roma /etc/passwd
 tail -5 /etc/passwd
 touch test.java /home/simon/
else
 echo "It doesn't exist"
fi
}
check