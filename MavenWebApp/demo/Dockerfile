# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the Maven webapp directory contents into the container at /app
COPY . /app

# Install Maven
RUN apk update && \
    apk add --no-cache maven

# Build the Maven project
RUN mvn clean install

# Expose port 8080
EXPOSE 8080

# Define environment variable
ENV NAME World

# Run the jar file when the container launches
CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
