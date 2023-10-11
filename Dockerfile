FROM openjdk:17

COPY .mvn /data/myapp/.mvn
COPY mvnw pom.xml /data/myapp
WORKDIR /data/myapp
RUN ./mvnw dependency:go-offline
COPY . /data/myapp
RUN ./mvnw install

CMD ["java", "-jar", "./target/gestion-0.0.1-SNAPSHOT.jar"]
