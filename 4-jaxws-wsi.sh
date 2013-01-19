echo "*********************************"
echo "run jaxws/wsi tests..."
echo "*********************************"
mkdir $RES/jaxws-wsi
cd $TS_HOME/src/com/sun/ts/tests/jaxws/wsi
ant runclient > $RES/jaxws-wsi/jaxws-wsi-runclient.log
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTreport $RES/jaxws-wsi
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTwork $RES/jaxws-wsi
echo ""  
echo "************ jaxws-wsi  ****************************" | cut -c -40 >> $RESULT_FILE
grep "Completed running" -A 3 $RES/jaxws-wsi/jaxws-wsi-runclient.log  | cut -c 18- >> $RESULT_FILE

