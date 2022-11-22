#!/usr/bin/env bash
#
# Run this script to download all the files and overwrite any of them exisyting locally
#

REPO="https://raw.githubusercontent.com/RupertBarrow/cumulusci-shared/"
BRANCH="main"
FILE="get_all_cumulusci_files.sh"

URL="$REPO/$BRANCH/$FILE"
mkdir -p scripts
wget $URL -O scripts/$FILE --quiet

bash scripts/$FILE
