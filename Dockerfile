FROM centos

MAINTAINER vijaykumaar.hp@gmail.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O http://mirror.reverse.net/pub/apache/tomcat/tomcat-9/v9.0.30/bin/embed/apache-tomcat-9.0.30-embed.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.30-embed/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/VIjayHP/test-apache/blob/master/scebe-1.0.0-BUILD-SNAPSHOT.war
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
