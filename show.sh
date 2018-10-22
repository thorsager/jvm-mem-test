#!/usr/bin/env sh
while true; do
	java -version
	java $JAVA_OPTS DockerJava10
	sleep 2
	echo "---"
done;
