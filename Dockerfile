FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/
COPY ${JAR_FILE}/docker-demo-0.0.1.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]