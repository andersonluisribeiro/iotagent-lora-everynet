#!/bin/bash -ex

version="latest"
if [ $TRAVIS_BRANCH != "master" ] ; then
  version=$TRAVIS_BRANCH
fi

tag=dojot/iotagent-lora-everynet:$version

docker login -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"
docker tag ${TRAVIS_REPO_SLUG} ${tag}
docker push $tag
