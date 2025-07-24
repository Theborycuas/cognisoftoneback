# Imagen base con JDK 17
FROM eclipse-temurin:17-jdk-alpine

# Crea directorio para la app
WORKDIR /app

# Copia el JAR generado desde Maven
COPY target/cognisoftoneback-0.0.1-SNAPSHOT.jar app.jar

# Expón el puerto por defecto (puede ser sobreescrito por Railway con $PORT)
EXPOSE 8080

# Ejecuta el jar
ENTRYPOINT ["java","-jar","/app/app.jar"]
