echo "*********************************"
echo "run saaj tests..."
echo "*********************************"
export MODULE_NAME=saaj
mkdir $RES/$MODULE_NAME
cd $TS_HOME/src/com/sun/ts/tests/saaj
ant runclient > $RES/$MODULE_NAME/$MODULE_NAME-runclient.log
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTreport $RES/$MODULE_NAME
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTwork $RES/$MODULE_NAME
cd /home/jimma/x1/code/JEETCK6
./print-result.sh
./jboss.sh restart
sleep 60
