#!/bin/bash

# Zoznam subjektov registrovaných k DPH
# prvy argument hladana hodnota (defaultna hodnota je 1)
# druhy argument page
# treti argument stlpec (defaultna hodnota je ic_dph)
#
# Example: ./ds_dphs_search.sh SK2020317068

set -e

. ./config.sh

_SEARCH=$1
_PAGE=${2:-"1"}
_COLUMN=${3:-"ic_dph"}

curl -X GET --insecure -H "key: ${OAFS_KEY}" https://iz.opendata.financnasprava.sk/api/data/ds_dphs/search \
-G \
-d page=${_PAGE} \
-d column=${_COLUMN} \
-d search=${_SEARCH}