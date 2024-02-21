
FROM openjdk:8-jdk-alpine
# Set the working directory inside the container
WORKDIR /app

# Copy the Gradle build files (build.gradle and settings.gradle)
COPY build.gradle settings.gradle ./

# Copy the entire source code
COPY src ./src

# Build the Gradle project
RUN ./gradlew build

# Specify the entry point for the container
#CMD ["java", "-jar", "build/libs/your-app.jar"]

#RUN ["chmod", "+x", "/usr/src/app/docker-entrypoint.sh"]

ENTRYPOINT ["java", "-jar", "/app.jar"]