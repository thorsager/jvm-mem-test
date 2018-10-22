FROM openjdk:12-jdk
COPY DockerJava10.java /
RUN javac DockerJava10.java

FROM openjdk:12-jdk
RUN groupadd foogroup && useradd -g foogroup foouser
USER foouser
COPY show.sh /
COPY --from=0 /DockerJava10.class /
WORKDIR /
ENTRYPOINT [ "./show.sh" ]
