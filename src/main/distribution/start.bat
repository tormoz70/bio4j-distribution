"%JAVA_HOME%\bin\java" ^
-server ^
-XX:-UseParallelGC ^
-Xms512M -Xmx2G ^
-Dcom.sun.management.jmxremote.port=${jmx-port} ^
-Dcom.sun.management.jmxremote.authenticate=false ^
-Dcom.sun.management.jmxremote.ssl=false ^
-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=${remote-debugger-port} ^
-Dgosh.args=--noi ^
-Duser.timezone=GMT+3 ^
-cp "bin/felix.jar;lib/*" ^
org.apache.felix.main.Main ^
=> start.log

rem -XX:MaxPermSize=128M ^
rem -jar bin/felix.jar ^
rem -Dlogback.configurationFile=conf/logback.xml ^
rem -Dlog4j.configurationFile=conf/org.ops4j.pax.logging.cfg ^
