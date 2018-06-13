FROM dockersolr/docker-solr:6.0

COPY ./vendor/drupal/search_api_solr/solr-conf/6.x /temp/solr-drupal-config

RUN /opt/solr/bin/solr start && \
    /opt/solr/bin/solr create_core -c reusable_core -d /temp/solr-drupal-config && \
    /opt/solr/bin/solr stop
