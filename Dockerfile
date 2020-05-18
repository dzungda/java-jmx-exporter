FROM java:8-jdk-alpine

COPY config.yaml nasapicture-0.0.1-SNAPSHOT.war jmx_prometheus_javaagent-0.13.0.jar /usr/app/

EXPOSE 8080 8082

WORKDIR /usr/app

ENTRYPOINT ["java", "-javaagent:./jmx_prometheus_javaagent-0.13.0.jar=8082:config.yaml", "-jar", "nasapicture-0.0.1-SNAPSHOT.war"]

