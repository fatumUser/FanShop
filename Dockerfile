FROM openjdk:17-jdk 
FROM mysql:date_baze_2
EXPOSE 9091
ADD TestJarFileC-0.0.1-SNAPSHOT.jar TestJarFileC-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-jar", "/TestJarFileC-0.0.1-SNAPSHOT.jar"]
ENV MYSQL_ROOT_PASSWORD=root
COPY ./main.sql /docker-entypoint-initdb.d/
