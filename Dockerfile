# Specify a base image
FROM openjdk:13-jdk-alpine

# Specify workdir
WORKDIR /app

# Copy files
COPY target/dependency/BOOT-INF/lib lib
COPY target/dependency/META-INF META-INF
COPY target/dependency/BOOT-INF/classes ./

#Default command
CMD ["java","-cp",".:lib/*","com.hello.hello.HelloApplication"]