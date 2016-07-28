FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y default-jdk libgtk2.0-0 libxtst6
