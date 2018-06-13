This is an extremely simple docker build that adds the search_api_solr
config files to a docker instance of solr based on the dockersolr/docker-solr:6.0
docker repo.

To update this file run:

```
composer install # to get the latest version of search_api_solr from Drupal.
```

then

```
docker build . # to build the docker image from the config files.
```

then get the image id from the output of the build command. In the following
example, the success message was "Successfully built 986c75cebe7e".

Create a new docker tag for this image:

```
docker tag 986c75cebe7e mariacha/docker-solr-drupal:6.0
```

Push your new image to docker:

```
docker push mariacha/docker-solr-drupal:6.0
```

You can then checkout this container from CircleCI with:

```
- image: mariacha/docker-solr-drupal:6.0
```

in your .circleci/config.yml file.
