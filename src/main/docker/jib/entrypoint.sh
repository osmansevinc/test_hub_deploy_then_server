#!/bin/sh

echo "The application will start in ${TEST_SLEEP}s..." && sleep ${TEST_SLEEP}
exec java ${JAVA_OPTS} -noverify -XX:+AlwaysPreTouch -Djava.security.egd=file:/dev/./urandom -cp /app/resources/:/app/classes/:/app/libs/* "com.example.demo.DemoApplication"  "$@"
