  When you install Git-bash, the first thing you should be doing is setting up your user details as 
  follows only one time :

  # git config --global user.name "bricelab" 
  # git config --global user.email "bricelab@gmail.com"

  To check configuration :

  # git config –list
  # git config --global –list

   sudo ssh-keygen
$ cat /root/.ssh/id_rsa.pub 

$ git init
$ git add file
$ git commit -m "add first file"
$ git remote add origin git@gitlab.com:user/example.git 
$ git push -u origin master