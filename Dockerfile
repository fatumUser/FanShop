FROM openjdk:20-jdk-slim
# Specify the JAR file name as a build argument
ARG JAR_FILE=target/*.jar
# Copy the JAR file to the /app directory in the container
COPY ${JAR_FILE} /project_2_v2.jar
# Expose the port for the container
EXPOSE 8080
# Set the entrypoint command to run the JAR fileу
ENTRYPOINT ["java", "-jar", "/project_2_v2.jar"]

