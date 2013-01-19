echo "*********************************"
echo "run jaxws/api tests..."
echo "*********************************"
mkdir $RES/jaxws-api
cd $TS_HOME/src/com/sun/ts/tests/jaxws/api

work.dir=JTwork
report.dir=JTreport
ant runclient -Dwork.dir=$RES/jaxws-api/JTwork -Dreport.dir= $RES/jaxws-api/JTreport > $RES/jaxws-api/jaxws-api-runclient.log
#cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTreport $RES/jaxws-api
#cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTwork $RES/jaxws-api
echo ""  
echo "************  jaxws-api  ****************************" | cut -c -40 >> $RESULT_FILE
grep "Completed running" -A 3 $RES/jaxws-api/jaxws-api-runclient.log  | cut -c 18- >> $RESULT_FILE

