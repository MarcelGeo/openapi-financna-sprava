#!/usr/bin/env bash

set -e

print_help(){
  ./generator/generated/iz/client.sh --about
  echo -e "-al/--available-lists - All lists in API"
  echo -e "-l/--list [slug] - Detail of list based on string slug"
  echo -e "-d/--data [slug] - Get data based on slug"
  echo -e "-p/--page [page] - Page in large data (default is 1)"
  echo -e "-c/--column [column] - Searchable column"
  echo -e "-s/--search [term] - Searching term in selected -c/--column"
}

. ./config.sh

get_slug=false
get_page=false
get_column=false
get_search=false

for param in "$@"; do

  if [[ "$get_slug" = true ]]; then
    SLUG=$param
    get_slug=false
    continue
  fi

  if [[ "$get_page" = true ]]; then
    PAGE=$param
    get_page=false
    continue
  fi

  if [[ "$get_search" = true ]]; then
    SEARCH=$param
    get_search=false
    continue
  fi

  if [[ "$get_column" = true ]]; then
    COLUMN=$param
    get_column=false
    continue
  fi

  case $param in
    -al|--available-lists)
      OPERATION="listsGet"
      break
      ;;
    -l|--list)
      OPERATION="listsSlugGet"
      get_slug=true
      ;;
    -d|--data)
      OPERATION="dataSlugGet"
      get_slug=true
      ;;
    -s|--search)
      OPERATION="dataSlugSearchGet"
      get_search=true
      ;;
    -c|--column)
      get_column=true
      ;;
    -p|--page)
      get_page=true
      ;;
    -h|--help)
      print_help
      exit 0
      ;;
    -*|--*)
      echo "ERROR: Unknown param $param"
      exit 1
      ;;
    *)
      ;;
  esac
done

# Check if user provided host name
if [[ -z "$OPERATION" ]]; then
    echo "ERROR: Operation not supported, not enough arguments"
    exit 1
fi

PARAMS=""

case $OPERATION in
    "listsSlugGet")
      if [[ -z "$SLUG" ]]; then
        echo "ERROR: Missing parameter"
        exit 1
      fi
      PARAMS="${PARAMS} slug=${SLUG}"
      ;;
    "dataSlugGet")
      if [[ -z "$SLUG" ]]; then
        echo "ERROR: Missing parameter"
        exit 1
      fi
      PARAMS="${PARAMS} slug=${SLUG} page=${PAGE:-1}"
      ;;
    "dataSlugSearchGet")
      if [[ -z "$SLUG" ]]; then
        echo "ERROR: Missing parameter"
        exit 1
      fi
      if [[ -z "$COLUMN" ]]; then
        echo "ERROR: Missing parameter column"
        exit 1
      fi
      PARAMS="${PARAMS} slug=${SLUG} page=${PAGE:-1} column=${COLUMN} search=${SEARCH}"
      ;;
    *)
      ;;
esac

./generator/generated/iz/client.sh \
--host https://iz.opendata.financnasprava.sk/api/data \
${OPERATION} \
'key:${OAFS_KEY}' \
$PARAMS

