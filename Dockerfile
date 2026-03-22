FROM eclipse-temurin:21-jre
RUN mkdir -p /opt/app && chown 1001:0 -R /opt/app
USER 1001
WORKDIR /opt/app
COPY --chown=1001:0 target/*.jar /opt/app/app.jar
EXPOSE 8080
CMD ["java", "-jar", "/opt/app/app.jar"]
