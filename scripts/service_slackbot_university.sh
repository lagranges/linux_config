LOG_DIR=~/log/slackbot/
APP_NAME=slackbot_university
PATTERN=python.*slackbot_university

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
