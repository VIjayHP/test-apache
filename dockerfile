FROM openjdk:10-jre-slim
COPY ./scebe-1.0.0-BUILD-SNAPSHOT.war /usr/src/hola/
WORKDIR /usr/src/hola
EXPOSE 8080
CMD ["java", "-jar", "scebe-1.0.0-BUILD-SNAPSHOT.war"]
