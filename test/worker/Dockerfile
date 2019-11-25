FROM maven:3.5-jdk-8-alpine AS builder

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN mvn dependency:resolve \
    && mvn package

FROM openjdk:8-jre-alpine

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/target/worker-jar-with-dependencies.jar ./

CMD ["java", "-jar", "worker-jar-with-dependencies.jar"]