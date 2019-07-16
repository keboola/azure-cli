#!/bin/bash

set -e

docker login -u="$QUAY_USERNAME" -p="$QUAY_PASSWORD" quay.io
docker tag keboola/azure-cli quay.io/keboola/azure-cli:${TRAVIS_TAG}
docker tag keboola/azure-cli quay.io/keboola/azure-cli:latest
docker images
docker push quay.io/keboola/azure-cli:${TRAVIS_TAG}
docker push quay.io/keboola/azure-cli:latest
