FROM openjdk:21
RUN microdnf install findutils
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
CMD ["./gradlew", "bootRun"]
