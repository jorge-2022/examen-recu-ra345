FROM eclipse-temurin:23-jre

WORKDIR /app

COPY target/examen-recu-ra345-1.0.0.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
