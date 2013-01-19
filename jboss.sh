#!/bin/sh

PROGNAME=`basename $0`
DIRNAME=`dirname $0`
CMD="$1"
BINDADDR="$2"

#export JBOSS_HOME
PIDFILE="$JBOSS_HOME/bin/jboss.pid"

RUN_CMD="$JBOSS_HOME/bin/standalone.sh"
export LAUNCH_JBOSS_IN_BACKGROUND="true"
export JBOSS_PIDFILE=$PIDFILE


#
# Helper to complain.
#
warn() {
   echo "$PROGNAME: $*"
}

case "$CMD" in
start)
    # This version of run.sh obtains the pid of the JVM and saves it as jboss.pid
    # It relies on bash specific features
    echo "/bin/bash $RUN_CMD >/dev/null 2>/dev/null &"
    cd $JBOSS_HOME/bin 
    ./standalone.sh > /dev/null 2>/dev/null &
    ;;
stop)
    if [ -f "$PIDFILE" ]; then
       pid=`cat "$PIDFILE"`
       #find out the pid of the shell script that started AS and which should be in background now
       shell_pid=$(ps -ef | awk '$2 ~ /\<'$pid'\>/ { print $3; }')
       echo "kill pid: $shell_pid"
       kill $shell_pid
       if [ "$?" -eq 0 ]; then
         sleep 10
         kill -9 $shell_pid &> /dev/null
       fi
       #try killing the AS process just in case it's still there
       kill -9 $pid &> /dev/null
       rm "$PIDFILE"
    else
       warn "No pid found!"
    fi
    echo "exiting stop method"
    date
    ;;
restart)
    $0 stop
    $0 start
    ;;
*)
    echo "usage: $0 JBOSS_HOME (start|stop|restart|help)"
esac

