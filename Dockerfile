FROM  java:7-jdk-alpine
WORKDIR /home/root/javahelloworld
COPY src ./src
ENV FOO bar
RUN javac -d bin src/HelloWorld.java
RUN touch "hola"
VOLUME /myvol
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
CMD ["127.0.0.1"]

