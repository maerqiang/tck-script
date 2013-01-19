cd $TS_HOME/src/com/sun/ts/tests/jaxws
ant -Dts.home=$TS_HOME -Dbuild.vi=true clean build > $LOG/build-jaxws-reverse.log
cd $TS_HOME/src/com/sun/ts/tests/jws
ant -Dts.home=$TS_HOME -Dbuild.vi=true clean build > $LOG/build-jws-reverse.log    
cd $TS_HOME/bin
ant -Dbuild.vi=true build.special.webservices.clients > $LOG/build-special-webservices-clients.log   
