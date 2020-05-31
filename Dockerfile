# Pull base image.
FROM ubuntu:latest

RUN \
# Update
apt-get update -y && \
# Install Java
apt-get install openjdk-8-jdk -y


ADD ./Group-Chat-With-WebSockets/target/chat-server-0.1.0.jar chat-server-0.1.0.jar

RUN java -version

# EXPOSE 8080

CMD java -Dserver.port=9090 -jar chat-server-0.1.0.jar

# master $ docker build -t webchatapp:1.0 .


# docker run -p 9090:8080 -t webchatapp:1.0

