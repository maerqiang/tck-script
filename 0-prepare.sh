mkdir log/$TEST_TIME
mkdir $LOG
mkdir $RES
#kill all java process
ps -ef | grep java | cut -c 10-14 | xargs kill -9
