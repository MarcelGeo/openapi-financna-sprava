. ./config.sh

curl --insecure -H "key: ${OAFS_KEY}" https://iz.opendata.financnasprava.sk/api/lists | jq
