# 1. Usar una imagen base con Java
FROM openjdk:17-jdk-slim

# 2. Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar el JAR de la aplicación al contenedor
COPY target/HolaMundo_Spring-0.0.1-SNAPSHOT.jar app.jar

# 4. Exponer el puerto en el que corre la aplicación
EXPOSE 8080

# 5. Comando para ejecutar la aplicación
CMD ["java", "-jar", "app.jar"]