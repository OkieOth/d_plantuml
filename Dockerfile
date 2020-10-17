FROM openjdk:14-jdk-alpine3.10

ADD version.txt /plantuml/version.txt

ENV LANG en_US.UTF-8

RUN \
  apk add --no-cache graphviz wget ca-certificates && \
  apk add --no-cache graphviz wget ca-certificates ttf-dejavu fontconfig && \
  wget "https://downloads.sourceforge.net/project/plantuml/$(head -n 1 /plantuml/version.txt)/plantuml.$(head -n 1 /plantuml/version.txt).jar" \
  -O /plantuml.jar && \
  apk del wget ca-certificates
ENTRYPOINT ["java", "-Djava.awt.headless=true", "-jar", "plantuml.jar"]
