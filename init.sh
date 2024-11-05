#!/bin/bash

dirLocal=$(pwd)

/app/localinstall.sh /app/previewers/v1.4 ${DATAPREVIEWERS_URL}
#/app/localinstall.sh /app/previewers/betatest ${DATAPREVIEWERS_URL}

cp -r /app/previewers /usr/share/nginx/html