LOG_DIR=~/log/slackbot/
APP_NAME=slackbot_university
PATTERN=python.*slackbot_university

export SLACK_API_TOKEN=xoxb-1301698801316-1301812752468-aUraGajicEqP0qg2Plb1OXHE
export PYTHONPATH=$PYTHONPATH:~/dev/slackbot_university/

start(){
	mkdir -p $LOG_DIR; python3 -m $APP_NAME.reception &> $LOG_DIR/log &
	echo "Slackbot launched, log file $LOG_DIR/log"
}

stop(){
	pkill -f $PATTERN
}

status(){
	ps -aux | grep $PATTERN
}


case $1 in
	start)
		start;;
	stop)
		stop;;
	restart)
		stop && start;;
	status)
		status;;
	*)
		echo "start|stop|restart|status"
esac
