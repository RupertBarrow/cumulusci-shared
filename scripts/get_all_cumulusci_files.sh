#!/usr/bin/env bash
#
# Run this script to download all the files and overwrite any of them exisyting locally
#

REPO="https://raw.githubusercontent.com/RupertBarrow/cumulusci-shared/"
BRANCH="main"
FILES="config/cumulusci.template.yml"
FILES="$FILES orgs/beta.json orgs/feature.json orgs/release.json orgs/dev.json"
FILES="$FILES .github/workflows/beta.yml .github/workflows/feature.yml .github/workflows/release.yml .github/workflows/github-visualizer-diagram.yml"

# DOwnload files individually
for FILE in $FILES; do
  URL="$REPO/$BRANCH/$FILE"
  mkdir -p `dirname $FILE`
  wget $URL -O $FILE --quiet
done

# Regenerate the local cumulusci.yml
cat ./cumulusci.base.yml ./config/cumulusci.template.yml > ./cumulusci.yml

echo
echo "Files downloaded, cumulusci.yml regenerated"
echo
