# Deploying SonarQube on AKS with Terraform

## Features

This repository provides Terraform template files to setup and deploy SonarQube on AKS. This is a baseline setup and should be modified for your enivrorment. The following services are setup and configured:

* [AKS](https://learn.microsoft.com/en-us/azure/aks/intro-kubernetes/)
* [SonarQube](https://docs.sonarqube.org/latest/)

## Terraform versions

* For Terraform 0.13 or later use any version from `v3.38.0` of hashicorp/azurerm module or newer.
* For Terraform 0.13 or later use any version from `v2.8.0` of hashicorp/helm module or newer.

## Authors

Repository managed by [Jeremy Redmond](https://github.com/jsredmond).

## License

MIT Licensed. See LICENSE for full details.
