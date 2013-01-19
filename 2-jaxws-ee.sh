echo "*********************************"
echo "run jaxws/ee tests..."
echo "*********************************"
mkdir $RES/jaxws-ee
cd $TS_HOME/src/com/sun/ts/tests/jaxws/ee
ant runclient > $RES/jaxws-ee/jaxws-ee-runclient.log
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTreport $RES/jaxws-ee
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTwork $RES/jaxws-ee
echo ""  
echo "************  jaxws-api  ****************************" | cut -c -40 >> $RESULT_FILE
grep "Completed running" -A 3 $RES/jaxws-ee/jaxws-ee-runclient.log  | cut -c 18- >> $RESULT_FILE
