# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 17, try this
FROM openjdk:17-alpine

# Refer to Maven build -> finalName
ARG JAR_FILE=target/hello-world-docker-0.0.1-SNAPSHOT.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/hello-world-docker.jar /opt/app/hello-world-docker.jar
COPY ${JAR_FILE} hello-world-docker.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","hello-world-docker.jar"]