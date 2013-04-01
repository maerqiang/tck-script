#rm -rf $JBOSS_HOME
#cp -r /home/jimma/x1/code/build/jboss-as-7.2.0.Alpha1-SNAPSHOT /home/jimma/x1/code/JEETCK6
cd $TS_HOME/jee6tck-as7-mods
ant clean > $LOG/ant-clean.log
ant -Dprofile=full > $LOG/ant-dprofile-full.log
cd $TS_HOME/bin
ant config.vi > $LOG/ant-config-vi.log
