echo "*********************************"
echo "run saaj tests..."
echo "*********************************"
mkdir $RES/saaj
cd $TS_HOME/src/com/sun/ts/tests/saaj
ant runclient > $RES/saaj/saaj-runclient.log
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTreport $RES/saaj
cp -r /home/jimma/x1/code/JEETCK6/tck6/trunk/bin/JTwork $RES/saaj
echo ""  
echo "************  saaj  ****************************" | cut -c -40 >> $RESULT_FILE
grep "Completed running" -A 3 $RES/saaj/saaj-runclient.log  | cut -c 18- >> $RESULT_FILE
