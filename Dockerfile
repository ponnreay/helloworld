FROM eclipse-temurin:17-jre-alpine

WORKDIR /root/helloworld
COPY build/libs/helloworld-0.0.1-SNAPSHOT.jar ./helloworld.jar
COPY script/run.sh ./

RUN ["chmod", "+x", "/root/helloworld/run.sh"]

ENTRYPOINT [ "/root/helloworld/run.sh" ]