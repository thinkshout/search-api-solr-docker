FROM dockersolr/docker-solr:7.0

COPY ./conf /temp/solr-drupal-config

RUN /opt/solr/bin/solr start && \
    /opt/solr/bin/solr create_core -c reusable_core -d /temp/solr-drupal-config && \
    /opt/solr/bin/solr stop
