"*********************************"
echo "run webservies tests..."
echo "*********************************"
mkdir $RES/webservices
cd $TS_HOME/src/com/sun/ts/tests/webservices
ant runclient > $RES/webservices/webservices-runclient.log
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTreport $RES/webservices
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTwork $RES/webservices
echo ""  
echo "************  webservices  ****************************" | cut -c -40 >> $RESULT_FILE
grep "Completed running" -A 3 $RES/webservices/webservices-runclient.log  | cut -c 18- >> $RESULT_FILE
sleep 60
