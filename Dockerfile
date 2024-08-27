FROM openjdk:11.0-jre-slim
EXPOSE 8888
ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} ms-configserver.jar
ENTRYPOINT ["java","-jar","/ms-configserver.jar"]