#!/bin/sh

echo "Running infra sites:"
BASEDIR=$(dirname $0)
echo "Script location: ${BASEDIR}"

kill $(ps aux | grep "firefox")

py ${BASEDIR}/scripts/open-browser.py ${BASEDIR}/sites/infra-sites.txt
exit 0