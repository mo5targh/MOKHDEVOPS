# Utiliser une image de base avec JDK 11
FROM openjdk:11-jre-slim

# Définir l'argument pour le fichier JAR
ARG JAR_FILE=target/*.jar

# Ajouter le fichier JAR dans le conteneur
COPY ${JAR_FILE} app.jar

# Exposer le port sur lequel l'application écoute
EXPOSE 8080

# Commande pour exécuter l'application
ENTRYPOINT ["java", "-jar", "/app.jar"]
