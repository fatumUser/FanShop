FROM openjdk:11-jdk
EXPOSE 8010
ADD my-app.jar my-app.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-jar", "/my-app.jar"]
