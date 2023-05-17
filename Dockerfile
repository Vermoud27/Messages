# Utiliser l'image debian officielle comme image parent
FROM debian:latest

#Instalation de java 
RUN  apt-get update && apt-get install -y default-jdk

COPY Server.java /app/Server.java
COPY Client2.java /app/Client2.java

RUN javac /app/*.java

CMD ["java", "-classpath", "/app" , "Server"]

# Rendre le port 80 accessible au monde en dehors de ce conteneur
EXPOSE 9000 
