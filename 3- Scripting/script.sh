Automating IT processes/workloads with Scripting
=================================================
  Computer/system:
  1. Bare Metal or Hard Ware  component
      RAM - memory 
      Cpu 
      ROM - hard disk / volume / storage 
      MOUSE
      KEYBOARD
  2.   software component 
          operating system = OS
            Windows OS
            MacOS 
            Linux  OS  
            Solaris  :
      other softwares :
         shell 
         Sublime text 
         Microsoft word/Excell  

workload management on systems:
    GUI = Graphical user interface 
    CLI = command line interface
     Linux OS = Linux servers/systems
      ls  = list the content of a directory
      touch test.txt
 shell: A shell is an interpreter that 
        interpretes commands to the OS.  
name   uID   gID    homeDir    shell  
paul:x:1001:1001::/home/paul:/bin/bash

landmark:x:1002:1002::/home/landmark:/bin/bash
simon:x:1003:1003::/home/simon:/bin/bash
james:x:1004:1004::/home/james:/bin/bash

List all interpreters [shells] in the system
   cat /etc/shells  

echo $SHELL 
cat /etc/shells
  /bin/sh
  /bin/bash
  /usr/bin/sh
  /usr/bin/bash
  /bin/tcsh
  /bin/csh
borne again shell =   bash  
borne shell = sh 

A shell script is a collection of commands in a file.
Shell-scripts has .sc or .sh extensions 

Naming conventions:
  deploy.sh  = Shell-script
  test.txt   = text file 
  app.sc     = Shell-script
  app.java   = java code 
  monitor.py =python code/script 
  app.yaml   = playbook

whatis echo

  vi hello.sh 
  #!/bin/bash
  echo "Welcome to landmark Technologies"
  echo "Your are now a millionaire"
  echo "Today is the: "
  date 
  echo scripting is automation
  echo "Thanks for coming"

 ./scriptName 
 ./hello.sh
[simon@db ~]$ ./hello.sh
-bash: ./hello.sh: Permission denied

-rw-rw-r-- 1  hello.sh
 6  6  4 
 We need the executable Permission 
 for the file to run as a script/command

 chmod +x hello.sh 
     -rwxrwxr-x 1 hello.sh 
 chmod 764 hello.sh  
 # 
 chmod +x script-file-name #
 chmod 755 script file name 
 Scripting or automation langauges :
  1. Bash Shell Scripting
  2. Python 
  3. Groovy  (Jenkins)
  3. Rudy
  4. Yaml  
      (k8s, Ansible, CloudFormation)
  5. JSon 
  6. HCL - Terraform  
  7. XML = 
  8. html 
  9. go/golang    
       
cat /etc/shells 

deploy.sh 
#!/bin/bash
echo "Welcome to Landmark" 
echo "apps are ready for deployment" 
sleep 5 
echo "deployment successful"

How to make scripts/code easily understand?
Add explanations or comments 

Running the script directly with an interpreter:
  bash deploy.sh
  sh deploy.sh
  csh deploy.sh  

tsh deploy.sh
-bash: tsh: command not found
     yum install tsh ksh -y 
     sudo -u root yum install tsh ksh -y 
     sudo yum install tsh ksh -y
     sudo -u paul yum install tsh ksh -y
  ksh deploy.sh
  csh  
explain the sudo command?

comment: metadata = data about data 
  Explains what the script is achieving 
  Use to eplain the script file
  single-line comment  #
slc.sh 
#!/bin/bash
echo single-line comment starts.
# This is a simple script
# This script will work in Linux OS
# Author: Landmark Technologies
echo single-line comment ends.
date
echo Congratulations you made it.

Multi-line line comment: 
  shell-script:
#!/bin/sh 
echo Multi-line comments starts 
<<boy 
Author: Simon 
This is a simple script
This script will work in Linux OS
Author: Landmark Technologies
echo Jesus is Lord 
boy 

echo Multi-line comments ends 
date  

  xml :
    <!--

    -->
  groovy:
    /* 


    */ 
  python:
  '''  

  '''
Who are the comments meant for?
  1. It make your script/code to be understood by 
     you and others 
  2. It make your script/code easily reusable in the future
  3. Facilitate/ease troubleshooting and debugging
  4. comments are Good for teams:
        6. developers writing codes/scripts 
        1. Scrum master 
        3. DevOps Engineers 
        1. DevOps Security Engineer 
  can you write your comments first and then 
  under it write your script? or does it have to 
  come between the scripts? Depends on you.  

Variables
There are two types of variables in Linux shell script. 
    System define variables
    user define  variables 
user define  variables: 
  Variables created/defined by the users 
vars.sh 
#/bin/bash 
company=LandmarkTechnology 
address=Canada
name=SimonLegah 
$VariableName is use to call a variable in shell scripting
echo The Director is $name 
echo $name works for $company 

systems define  variables: 
  Variables defined by the system
  environmental variables
echo $SHELL 
echo $PWD 
whatis env 
env  
  HOSTNAME=db
  SHELL=/bin/bash
  TERM=xterm
  HISTSIZE=1000
  USER=simon
  HOME=/home/simon
  LOGNAME=simon
echo $SHELL 
echo $PWD 
echo $HOSTNAME 
echo $HISTSIZE 
  1000
export HISTSIZE=80   = changes effected for a session 
.bashrc and .bash_profile
vi .bashrc = enforce changes for a specific user
vi .bashrc
  export HISTSIZE=2000 
  source .bashrc 

 /etc/profile will enforce the changes to all users  
 ONLY the root user can modify this file 
 sudo vi /etc/profile  
 export HISTSIZE=1500 
 source /etc/profile

or 
 sudo echo "export HISTSIZE=1500" >> /etc/profile
 File management  = files and directory 
                   dir      file 
 full Permission   0777     0666 
 expected perm.    0777     0666
                   ----     -----
                   0000      0000
                   -----     -----
 
 Creating a user:
  sudo adduser enock 
   user-id = 1004   
 Where are users created: In the system/server 
   server/system:
    ip-address = 54.85.146.233
    HOSTNAME   = ip-172-31-19-167.ec2.internal
      sudo hostname db 
    id         = i-027214ccfa75d5b0b
=====================================
