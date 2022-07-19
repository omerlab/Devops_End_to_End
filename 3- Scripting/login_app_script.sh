# login.sh 

 echo please enter your username 
 read username 
 echo please enter your password 

# read -s will read your password as a secret. it will what user provides against what they have

 read -s password 
 echo $username welcome to paypal