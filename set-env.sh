#set TS_HOME environment variable to work_dir
export TS_HOME=/home/jimma/x1/code/JEETCK6/tck6/trunk
#Set JBOSS_HOME to the JBoss AS installation selected above
export JBOSS_HOME=/home/jimma/x1/code/JEETCK6/jboss-as-7.2.0.Alpha1-SNAPSHOT
#Set JAVAEE_HOME to $JBOSS_HOME
export JAVAEE_HOME=/home/jimma/x1/code/jboss-as-7.2.0.Alpha1-SNAPSHOT
#Set JAVAEE_HOME_RI to Java EE 6 RI (e.g., /opt/glassfishv3/glassfish)
export JAVAEE_HOME_RI=/home/jimma/x1/code/JEETCK6/glassfish3/glassfish
#Set JAVA_HOME to your JDK 6.0 installation.
export JAVA_HOME=/home/jimma/java/jdk1.6.0_34
#Set DERBY_HOME $JAVAEE_HOME_RI/../javadb
export DERBY_HOME=$JAVAEE_HOME_RI/../javadb
#Set date
export TEST_TIME=$(date +%Y-%m-%d-%H%M%S)
export RESULT_FILE=/home/jimma/x1/code/JEETCK6/log/$TEST_TIME/all-result-$TEST_TIME.txt
export LOG=/home/jimma/x1/code/JEETCK6/log/$TEST_TIME/log
export RES=/home/jimma/x1/code/JEETCK6/log/$TEST_TIME/result


