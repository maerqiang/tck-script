echo "*********************************"
echo "run jaxws/wsa tests..."
echo "*********************************"
export MODULE_NAME=jaxws-wsa
mkdir $RES/jaxws-wsa
cd $TS_HOME/src/com/sun/ts/tests/jaxws/wsa
ant runclient > $RES/jaxws-wsa/jaxws-wsa-runclient.log
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTreport $RES/jaxws-wsa
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTwork $RES/jaxws-wsa
echo ""  
echo "************  jaxws-wsa  ****************************" | cut -c -40 >> $RESULT_FILE
grep "Completed running" -A 3 $RES/jaxws-wsa/jaxws-wsa-runclient.log  | cut -c 18- >> $RESULT_FILE

