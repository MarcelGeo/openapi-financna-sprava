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
_PAGE=${2:-1}
_COLUMN=${3:-"ic_dph"}

./generator/generated/iz/client.sh \
--host https://iz.opendata.financnasprava.sk/api/data \
dataSlugSearchGet \
'key:${OAFS_KEY}' \
slug=ds_dphs page=${_PAGE} column=${_COLUMN} search=${_SEARCH}

