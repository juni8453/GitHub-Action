FROM openjdk:11-jdk
VOLUME /tmp
ARG JAR_FILE=./build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENV PROFILE local
ENTRYPOINT ["java","-Dspring.profiles.active=${PROFILES}","-jar","/app.jar"]