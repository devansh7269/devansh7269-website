FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . .
RUN ./mvnw package -DskipTests || mvn package -DskipTests
EXPOSE 8080
CMD ["java", "-jar", "target/personal-website-1.0-SNAPSHOT.war"]
