. ./config.sh

###
# Získanie zoznamu dostupných registrov do formatovaneho JSON
#
###

curl --insecure -H "key: ${OAFS_KEY}" https://iz.opendata.financnasprava.sk/api/lists | jq
