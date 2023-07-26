#!/bin/sh

cd helm/druid
helm dependency build .

cd ../../
helm package helm/druid
helm repo index .
