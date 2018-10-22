FROM openjdk:10-jre

RUN groupadd foogroup && useradd -g foogroup foouser

USER foouser

COPY show.sh /
COPY DockerJava10.class /
WORKDIR /
ENTRYPOINT [ "./show.sh" ]
