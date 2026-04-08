# Use an official OpenJDK 21 runtime as a parent image
FROM alpine/java:22-jdk
# Set the working directory
WORKDIR /app

# Copy the WAR file from the target directory
COPY target/buildproject-0.0.1-SNAPSHOT.war /app/buildproject.war

# Expose port 8080
EXPOSE 8080

# Run the WAR file
ENTRYPOINT ["java", "-jar", "/app/buildproject.war"]
