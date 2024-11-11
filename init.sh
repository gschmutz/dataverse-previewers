#!/bin/bash

dirLocal=$(pwd)

# Set some defaults as documented
VERSIONS=${VERSIONS:-"v1.4"}

echo "Using Provider Url=${PREVIEWERS_PROVIDER_URL} for versions ${VERSIONS}"
cd /app
if echo "$VERSIONS" | grep -q "\bv1.3\b"; then
    ./localinstall.sh previewers/v1.3 ${PREVIEWERS_PROVIDER_URL}
fi
if echo "$VERSIONS" | grep -q "\bv1.4\b"; then
    ./localinstall.sh previewers/v1.4 ${PREVIEWERS_PROVIDER_URL}
fi
if echo "$VERSIONS" | grep -q "\bbetatest\b"; then
    ./localinstall.sh previewers/betatest ${PREVIEWERS_PROVIDER_URL}
fi

cp -r ./previewers /usr/share/nginx/html
