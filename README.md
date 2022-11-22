# cumulusci-shared

Shared configuration of CumulusCI

## Instructions

To add these Cumulus CI configuration files to your repository :

- download the script `run_cumulusci_update.sh` to the root of your local repository
- run the script : `bash run_cumulusci_update.sh`

All the files CumulusCI configuration and workflow files are downloaded and overwrite existing local files with identical names.
The local `cumulusci.yml` file is also regenerated.

## Impacted files

````
.github/release.yml
.github/workflows/github-visualizer-diagram.yml
.github/workflows/feature.yml
.github/workflows/beta.yml
.github/workflows/release.yml
config/cumulusci.template.yml
orgs/dev.json
orgs/feature.json
orgs/beta.json
orgs/release.json
scripts/get_all_cumulusci_files.sh
```
````
