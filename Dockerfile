# Utiliser l'image debian officielle comme image parent
FROM debian:latest

#Instalation de java 
RUN  apt-get update && apt-get install -y default-jdk

COPY ./docker-sae203/Server/Server.java /app/
COPY ./docker-sae203/Client/Client2.java /app/

RUN javac /app/Server.java

CMD ["java", "-classpath", "/app" , "Server"]

# Rendre le port 80 accessible au monde en dehors de ce conteneur
EXPOSE 9000 
