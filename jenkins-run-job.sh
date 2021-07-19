#!/bin/bash

me=$(basename $0)
echo "me: ${me} $@"

if [[ $# -ne 2 ]]; then
  echo "Usage: ${me} <jobname> <branch>"
  exit
fi

job=${1}
branch=${2}

URL="http://localhost:8080/job/${job}/job/${branch}/build"
echo "URL: ${URL}"

curl -X POST -vL --user auto:"$(< auto.TOKEN)"  "${URL}"
echo "retVal=$?"

#curl -X POST -vL --user auto:11472f530977d43e7f45ba5642d7fe7750  http://localhost:8080/job/CICD-demo/job/master/buildWithParameters?param1=a&version=1.1&unitTests=true
