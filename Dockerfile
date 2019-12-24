FROM openjdk:10-jre-slim

EXPOSE 8080
COPY ./scebe-1.0.0-BUILD-SNAPSHOT.war /usr/src/hola/
WORKDIR /usr/src/hola
EXPOSE 8899
ENTRYPOINT ["java","-jar","scebe-1.0.0-BUILD-SNAPSHOT.war"]