#!/bin/bash

set -e

. generator.sh
. swagger-iz.sh

_DIR=./generated/iz

if [ ! -d "${_DIR}" ]; then
    mkdir -p ${_DIR}
fi

rm -rf ../generated/iz

SWAGGER="swagger-iz.yaml"

echo $OAFS_JAR

java -ea \
  ${JAVA_OPTS} \
  -server \
  -jar ${OAFS_JAR} \
  generate \
  --input-spec "${SWAGGER}" \
  --generator-name bash \
  --output ${_DIR} \
