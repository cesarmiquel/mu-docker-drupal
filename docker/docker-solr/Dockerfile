FROM gliderlabs/alpine:3.2

RUN apk-install openjdk7-jre && \
    mkdir -p /opt/apache-solr-3.6.2

COPY apache-solr-3.6.2 /opt/apache-solr-3.6.2/

EXPOSE 8983

WORKDIR /opt/apache-solr-3.6.2/

CMD ["/usr/bin/java", "-jar", "/opt/apache-solr-3.6.2/start.jar"]
