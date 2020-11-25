#!/bin/sh

echo "Running application sites"
BASEDIR=$(dirname $0)
echo "Script location: ${BASEDIR}"

kill $(ps aux | grep "firefox")

py ${BASEDIR}/scripts/open-browser.py ${BASEDIR}/sites/application-sites.txt
exit 0