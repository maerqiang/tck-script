echo ""  
echo "************  $MODULE_NAME  ****************************" | cut -c -40 >> $RESULT_FILE
grep "Completed running" -A 3 $RES/$MODULE_NAME/$MODULE_NAME-runclient.log  | cut -c 18- >> $RESULT_FILE
