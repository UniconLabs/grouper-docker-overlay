#!/bin/sh
set -x

service mysql start

service slapd start

rm -rf /opt/apache-tomcat-6.0.44/work/*

echo "Remote debugging enabled : $DEBUGGER_ENABLED"

if [ "$DEBUGGER_ENABLED" = true ] ; then
    /opt/apache-tomcat-6.0.44/bin/catalina.sh jpda start
    export GSH_JVMARGS=-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005
else
    /opt/apache-tomcat-6.0.44/bin/catalina.sh start
fi

cd /opt/grouper.apiBinary-2.3.0/
bin/gsh -loader &

tail -f /opt/grouper.apiBinary-2.3.0/logs/grouper_error.log
