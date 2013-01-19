echo "*********************************"
echo "run jaxws/mapping tests..."
echo "*********************************"
mkdir $RES/jaxws-mapping
mkdir $RES/jaxws-mapping/JTwork
mkdir $RES/jaxws-mapping/JTreport
cd $TS_HOME/src/com/sun/ts/tests/jaxws/mapping
ant -Dwork.dir=$RES/jaxws-mapping/JTwork -Dreport.dir= $RES/jaxws-mapping/JTreport runclient>  $RES/jaxws-mapping/jaxws-mapping-runclient.log
#cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTreport $RES/jaxws-mapping
#cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTwork $RES/jaxws-mapping
echo ""  
echo "************  jaxws-mapping  ****************************" | cut -c -40 >> $RESULT_FILE
grep "Completed running" -A 3 $RES/jaxws-mapping/jaxws-mapping-runclient.log  | cut -c 18- >> $RESULT_FILE

