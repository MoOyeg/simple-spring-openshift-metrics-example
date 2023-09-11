FROM registry.access.redhat.com/ubi9/openjdk-17:1.16-1.1693315921

USER root

ADD demo /opt/app-root/src

WORKDIR /opt/app-root/src/

RUN ./mvnw clean package -DskipTests

RUN chown -R 1001:1001 /opt/app-root/src

RUN chmod -R 777 /opt/app-root/src

USER 1001

EXPOSE 8080

ENTRYPOINT ["java","-jar","/opt/app-root/src/target/demo-0.0.1-SNAPSHOT.jar"]
