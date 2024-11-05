#!/bin/bash

dirLocal=$(pwd)

echo "Using ${PREVIEWER_PROVIDER_URL}"

cd /app
./localinstall.sh v1.2 ${PREVIEWER_PROVIDER_URL}
./localinstall.sh v1.3 ${PREVIEWER_PROVIDER_URL}
./localinstall.sh v1.4 ${PREVIEWER_PROVIDER_URL}
./localinstall.sh betatest ${PREVIEWER_PROVIDER_URL}

cp -r ./previewers /usr/share/nginx/html
