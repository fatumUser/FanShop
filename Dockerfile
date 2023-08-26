FROM openjdk:11-jdk-slim
# Specify the JAR file name as a build argument
ARG JAR_FILE=target/*.jar
# Copy the JAR file to the /app directory in the container
COPY ${JAR_FILE} /app/app.jar
# Expose the port for the container
EXPOSE 8080
# Set the entrypoint command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

