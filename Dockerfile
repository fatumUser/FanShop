
FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD=root
COPY ./main.sql /docker-entypoint-initdb.d/
FROM openjdk:17-jdk
ADD TestJarFileC-0.0.1-SNAPSHOT.jar TestJarFileC-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-jar", "/TestJarFileC-0.0.1-SNAPSHOT.jar"]
EXPOSE 9091

