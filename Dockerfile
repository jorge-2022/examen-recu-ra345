FROM eclipse-temurin:23-jre

WORKDIR /app

COPY target/examen-recu-ra345-1.0.0.jar app.jar

EXPOSE 8080

# Forzamos una espera de 10 segundos para dar tiempo a que Postgres levante en la IP pública
ENTRYPOINT ["sh", "-c", "sleep 10 && java -jar app.jar"]
