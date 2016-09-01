FROM unicon/grouper-demo:2.3.0

MAINTAINER jgasper@unicon.net

ADD libs/ /opt/apache-tomcat-6.0.44/webapps/grouper/WEB-INF/lib/
ADD classes/ /opt/apache-tomcat-6.0.44/webapps/grouper/WEB-INF/classes/
ADD /testCaseSetup.gsh /
COPY run-grouper.sh /opt/container-scripts

RUN set -x; \
    service mysql start \
    && service slapd start \
    && cd /opt/grouper.apiBinary-2.3.0/ \
    && bin/gsh /testCaseSetup.gsh \
    && chmod -R +x /opt/container-scripts/
    
    
EXPOSE 389 3306 8080 5005

ENV DEBUGGER_ENABLED=true

CMD ["run-grouper.sh"]
