#!/bin/sh

echo "Running technology sites"
BASEDIR=$(dirname $0)
echo "Script location: ${BASEDIR}"

kill $(ps aux | grep "firefox")

py ${BASEDIR}/scripts/open-browser.py ${BASEDIR}/sites/tech-sites.txt
exit 0