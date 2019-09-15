# FROM oracle/graalvm-ce:latest
FROM graalvm-native-image:latest 
COPY Hello.java /opt/app/Hello.java
WORKDIR /opt/app
RUN javac Hello.java
# RUN gu install native-image
RUN native-image Hello
ENTRYPOINT /opt/app/hello
