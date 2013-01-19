echo "*********************************"
echo "run jws tests..."
echo "*********************************"
mkdir $RES/jws
cd $TS_HOME/src/com/sun/ts/tests/jws
ant runclient > $RES/jws/jws-runclient.log
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTreport $RES/jws
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTwork $RES/jws
echo ""  
echo "************  jws  ****************************" | cut -c -40 >> $RESULT_FILE
grep "Completed running" -A 3 $RES/jws/jws-runclient.log  | cut -c 18- >> $RESULT_FILE
