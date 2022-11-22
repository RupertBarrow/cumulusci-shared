# cumulusci-shared

Shared configuration of CumulusCI

## Instructions

To add these Cumulus CI configuration files to your repository :

- download the script `run_cumulusci_update.sh` to the scripts folder of your local repository
- add a "2gppackagename" entry to your package.json file, like
  ` "2gppackagename": "Rapido Utils library",`
- add the following line to your package.json file under scripts :
  ` "generate_cumulusci_yml": "echo 'Generate cumulusci.yml' && bash scripts/run_cumulusci_update.sh \"${npm_package_2gppackagename}\""`
- run `yarn generate_cumulusci_yml`

All the files CumulusCI configuration and workflow files are downloaded and overwrite existing local files with identical names.
The local `cumulusci.yml` file is also regenerated.

## Impacted files

```
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
