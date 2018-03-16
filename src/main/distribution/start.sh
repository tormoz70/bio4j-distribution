#!/bin/sh

JAVA_HOME=../java/jdk1.8.0_131

$JAVA_HOME/bin/java \
    -server \
    -XX:-UseParallelGC \
    -Xms512M -Xmx2G \
    -Dcom.sun.management.jmxremote.port=1100 \
    -Dcom.sun.management.jmxremote.authenticate=false \
    -Dcom.sun.management.jmxremote.ssl=false \
    -Dgosh.args=--noi \
    -Duser.timezone=GMT+3 \
    -jar bin/felix.jar 2>&1 > felix.out &

# -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=9009 \
# -XX:MaxPermSize=128M \
# -jar bin/felix.jar \
# -Dlogback.configurationFile=conf/logback.xml \
# -Dlog4j.configurationFile=conf/org.ops4j.pax.logging.cfg \
