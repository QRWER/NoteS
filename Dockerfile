FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:resolve
COPY src ./src
RUN mvn clean package
RUN ls -l target/
FROM tomcat:10-jdk21
WORKDIR /usr/local/tomcat/webapps
RUN rm -rf ROOT
COPY --from=build /app/target/notes.war ROOT.war
CMD ["catalina.sh", "run"]