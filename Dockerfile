FROM openjdk:17
COPY . /data/myapp
WORKDIR /data/myapp
RUN ./mvnw install

CMD ["java", "-jar", "./target/gestion-0.0.1-SNAPSHOT.jar"]
