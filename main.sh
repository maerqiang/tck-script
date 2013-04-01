#main.sh
source ./set-env.sh

echo "*********************************"
echo "prepare...."
echo "*********************************"
./0-prepare.sh

echo "*********************************"
echo "config-as7-create-cts..."
echo "*********************************"
./1-config-as7-create-cts.sh

echo "*********************************"
echo "start-javadb.sh..."
echo "*********************************"
./2-start-javadb.sh &

echo "*********************************"
echo "init-derby-start-ri.."
echo "*********************************"
./3-init-derby-start-ri.sh

echo "*********************************"
echo "start JBoss7 ..."
echo "*********************************"
cd /home/jimma/x1/code/JEETCK6
./jboss.sh  start
sleep 50

echo "build reverse..."
./5-build-reverse.sh

#create final result file
echo "---------JBossWS TCK6 Test Result($TEST_TIME)---------" > $RESULT_FILE 
echo "" >> $RESULT_FILE

./1-jaxws-api.sh
./2-jaxws-ee.sh
./3-jaxws-mapping.sh
./4-jaxws-wsi.sh
./5-jaxws-wsa.sh
./6-jws.sh
#./6-jws-reverse.sh
./7-saaj.sh
./8-jaxrpc.sh
./9-webservices.sh
./10-webservices12.sh
./11-webservices13.sh
#send result 
echo " " >> $RESULT_FILE
echo " " >> $RESULT_FILE
cat $JBOSS_HOME/version.txt >> $RESULT_FILE
echo " " | mutt -s "JBossWS TCK6 Test Result-$TEST_TIME" -i $RESULT_FILE -- ema@redhat.com
