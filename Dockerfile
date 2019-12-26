FROM tomcat:8.0-jre8
MAINTAINER vijaykumaar.hp@gmail.com
COPY ./scebe-1.0.0-BUILD-SNAPSHOT.war $CATALINA_HOME/webapps
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
