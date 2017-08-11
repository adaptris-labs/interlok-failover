#!/bin/sh
set -e
JVM_ARGS=${JVM_ARGS:="-Xmx1024m"}
JAVA_OPTS=${JAVA_OPTS:="-Dsun.net.inetaddr.ttl=3600"}
INTERLOK_OPTS=${INTERLOK_OPTS:="bootstrap.properties"}
INTERLOK_BASE=${INTERLOK_BASE:="/opt/interlok"}
CLASSPATH="$INTERLOK_BASE/lib/adp-core.jar:$INTERLOK_BASE/config:$INTERLOK_BASE/lib/*"

(cd $INTERLOK_BASE; exec java $JVM_ARGS $JAVA_OPTS -cp $CLASSPATH com.adaptris.failover.FailoverBootstrap $INTERLOK_OPTS)