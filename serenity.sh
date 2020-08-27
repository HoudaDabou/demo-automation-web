#!/bin/bash

display_usage() {
  echo "This script must be run with at least 2 arguments"
  echo -e "Usage:" $0 "[local|browserstack] [single|parallel]"
}

if [  $# -lt 1 ]
then
      display_usage
      exit 1
fi

LOCAL_BROWSERSTACK=$1
if [ "$LOCAL_BROWSERSTACK" = "browserstack" ]; then
  if [  $# -lt 2 ]
  then
      display_usage
      exit 1
  fi
fi

SINGLE_PARALLEL=$2
mvn -U -DskipTests=true clean install
case $LOCAL_BROWSERSTACK in
     local)
       mvn clean verify -Dheadless.mode=false -Dwebdriver.chrome=chrome
       ;;
     browserstack)
       mvn clean verify -P $SINGLE_PARALLEL
      ;;
esac
