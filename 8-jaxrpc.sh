echo "*********************************"
echo "run jaxrpc tests..."
echo "*********************************"
mkdir $RES/jaxrpc
cd $TS_HOME/src/com/sun/ts/tests/jaxrpc
ant runclient > $RES/jaxrpc/jaxrpc-runclient.log
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTreport $RES/jaxrpc
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTwork $RES/jaxrpc
echo ""  
echo "************  jaxrpc  ****************************" | cut -c -40 >> $RESULT_FILE
grep "Completed running" -A 3 $RES/jaxrpc/jaxrpc-runclient.log  | cut -c 18- >> $RESULT_FILE
