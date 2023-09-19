FROM java:8 as ship
RUN addgroup --system app && adduser --system --ingroup app app
user app
WORKDIR /home/app/
ADD springboot-0.0.1-SNAPSHOT.jar /home/app/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]