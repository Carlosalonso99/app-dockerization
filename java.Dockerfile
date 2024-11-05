# Usamos la imagen base de Maven para construir la aplicación
FROM maven:3.8.5-openjdk-17 AS build

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos los archivos de configuración y dependencias
COPY pom.xml .
RUN mvn dependency:go-offline

# Copiamos el código fuente de la aplicación
COPY src ./src

# Compilamos la aplicación
RUN mvn package

# Usamos una imagen base de OpenJDK para ejecutar la aplicación
FROM openjdk:17

# Copiamos el archivo JAR desde la etapa de construcción
COPY --from=build /app/target/mi-aplicacion.jar /mi-aplicacion.jar

# Exponemos el puerto que usará la aplicación
EXPOSE 8080

# Definimos el comando de inicio
CMD ["java", "-jar", "/mi-aplicacion.jar"]