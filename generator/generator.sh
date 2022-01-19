#!/bin/bash

_REPO=openapitools/openapi-generator
_VERSION=5.3.1
_JAR=openapi-generator-cli-${_VERSION}.jar

export OAFS_JAR=${_JAR}

if [ ! -f "${_JAR}" ]; then
    wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/${_VERSION}/${_JAR} -O ${_JAR}
fi
