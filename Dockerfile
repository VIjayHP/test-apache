FROM centos

MAINTAINER vijaykumaar.hp@gmail.com
RUN USER 1001
RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O http://mirror.cc.columbia.edu/pub/software/apache/tomcat/tomcat-8/v8.5.50/src/apache-tomcat-8.5.50-src.zip
RUN yum install -y unzip
RUN unzip apache-tomcat-8.5.50-src.zip
RUN mv apache-tomcat-8.5.50-src/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/VIjayHP/test-apache/raw/master/scebe-1.0.0-BUILD-SNAPSHOT.war

EXPOSE 8080
RUN chmod /opt/tomcat/bin/*.sh
RUN chmod /opt/tomcat/bin/catalina.sh
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
