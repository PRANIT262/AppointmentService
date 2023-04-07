FROM openjdk:17
EXPOSE 9011
ADD /target/g3-appointment-service.jar  g3-appointment-service.jar
ENTRYPOINT [ "java" ,"-jar","g3-appointment-service.jar"]