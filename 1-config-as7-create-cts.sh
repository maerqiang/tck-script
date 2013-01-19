cd $TS_HOME/jee6tck-as7-mods
ant clean > $LOG/ant-clean.log
ant -Dprofile=full > $LOG/ant-dprofile-full.log
cd $TS_HOME/bin
ant config.vi > $LOG/ant-config-vi.log
