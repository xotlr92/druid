#!/bin/sh

cd helm/druid
helm dependency build .

cd ../../
rm -rf ./druid*.tgz
helm package helm/druid
helm repo index .
