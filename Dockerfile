FROM openjdk:17-jdk
EXPOSE 9091
ADD FanShop-0.0.1-SNAPSHOT.jar FanShop-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-jar", "/FanShop-0.0.1-SNAPSHOT.jar"]
