#!/usr/bin/env bash
#
# Run this script to download all the files and overwrite any of them exisyting locally
#

PACKAGE_NAME="$1"

REPO="https://raw.githubusercontent.com/RupertBarrow/cumulusci-shared/"
BRANCH="main"
FILE="scripts/get_all_cumulusci_files.sh"

URL="$REPO/$BRANCH/$FILE"
mkdir -p scripts
wget $URL -O $FILE --quiet

bash $FILE "$PACKAGE_NAME"
