#!/bin/bash

# Requires cURL

# Set these variables to your environment

REPORT_UID="c6LcRcxTmIz" # UID on server, look up in Web API
REPORT_FILENAME="adex-validation.html" # On filesystem in same directory
BASE_URL="https://who.sandbox.dhis2.org/adex-test" # To DHIS instance
USER="user" # DHIS username
PWD="password!" # DHIS password

# Constants, do not change

URL="${BASE_URL}/api/reports/${REPORT_UID}/design"

echo "Using URL: ${URL}"

# PUT to server

`curl --data-binary @${REPORT_FILENAME} "${URL}" -H "Content-Type:application/html" -u ${USER}:${PWD} -X PUT -v`

echo "Done"
