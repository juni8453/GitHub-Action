FROM openjdk:11-jdk
VOLUME /tmp
ARG JAR_FILE=./build/libs/*.jar
COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]

#yml 분리 테스트
ENV USE_PROFILE deploy
ENTRYPOINT ["java","-Dspring.profiles.active=${USE_PROFILE}","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]