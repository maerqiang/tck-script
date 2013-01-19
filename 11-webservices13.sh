echo "*********************************"
echo "run webservie13 tests..."
echo "*********************************"
mkdir $RES/webservices13
cd $TS_HOME/src/com/sun/ts/tests/webservices13
ant runclient > $RES/webservices13/webservices13-runclient.log
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTreport $RES/webservices13
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTwork $RES/webservices13
echo ""  
echo "************  webservices13  ****************************" | cut -c -40 >> $RESULT_FILE
grep "Completed running" -A 3 $RES/webservices13/webservices13-runclient.log  | cut -c 18- >> $RESULT_FILE

