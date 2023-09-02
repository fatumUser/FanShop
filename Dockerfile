FROM openjdk:17-jdk
EXPOSE 9091
ADD TestJarFileC-0.0.1-SNAPSHOT.jar TestJarFileC-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-jar", "/TestJarFileC-0.0.1-SNAPSHOT.jar"]
FROM mysql: data_baze_2
ENV MYSQL_ROOT_PASSWORD=root
COPY ./databse_dog.sql /docker-entypoint-initdb.d/
