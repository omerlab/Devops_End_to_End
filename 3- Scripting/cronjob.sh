Scheduling Tasks/Workloads to run automatically.
Assignment/Ticket:
  1. Write a script that monitors servers every minutes 
     This script should alert management of anomalies 
  2. Write a script that backup dbServers every midnight
Execution:
1. We shall use cronJobs and create cron tables to achieve this 
   Automation and Schedule the tasks to run as expected. 

   cron table   = contains scheduled tasks   
   crontab -e   = To edit the cron table 
   crontab -l   = List the cron table


Access to the crontab should be restricted because
 1. processes/Workloads consumes systems resources [cpu, Memory]
 2. some Tasks can affect processes and shutdown the system   
How to restrict crontab access:
   sudo touch /etc/cron.allow

   sudo touch /etc/cron.deny
      peter  
Memory


  sh monitor_server.sh 

* * * * *   /home/simon/monitor_server.sh  >> /tmp/monitor.log

* * * * * /home/simon/monitor_server.sh >/dev/null 2>&1
1 0 * * 0 /home/simon/db_backup.sh >/dev/null 2>&1
1 0 * * 0 /home/simon/db_backup.sh >/home/simon/log.monitor 2>&1

*  = every minute 
*  = every hour
*  = every day 
*  = every month 
*  = every week 
==============