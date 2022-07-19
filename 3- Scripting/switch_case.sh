# switch case script

echo "learning switch cases in scripting"

case $1 in

        start)
echo "starting sonarQube server"
echo "sonarQube server started";;

stop)
echo "stopping sonarQube server"
echo "sonarQube server stopped";;

restart)
echo "restarting sonarQube server"
echo "sonarQube server restarted";;

*)
 echo "sorry you passed the wrong option"
 echo "Options are start | stop | restart"
 ;;

esac

echo "switch cases are very good and easy to understand"
