"*********************************"
echo "run webservies12 tests..."
echo "*********************************"
mkdir $RES/webservices12
cd $TS_HOME/src/com/sun/ts/tests/webservices12
ant runclient > $RES/webservices12/webservices12-runclient.log
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTreport $RES/webservices12
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTwork $RES/webservices12
echo ""  
echo "************  webservices12  ****************************" | cut -c -40 >> $RESULT_FILE
grep "Completed running" -A 3 $RES/webservices12/webservices12-runclient.log  | cut -c 18- >> $RESULT_FILE

