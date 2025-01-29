# README
Playbooks to patch the Red Hat Developer Hub installation, provided by the [Trusted Application Pipeline](https://catalog.demo.redhat.com/catalog?item=babylon-catalog-prod/enterprise.redhat-tap-demo.prod&utm_source=webapp&utm_medium=share-link) demo from the [Red Hat Demo Platform](https://catalog.demo.redhat.com).

## Pre-requisites

* Ansible installed on the local development environment
* A running instance of the [Trusted Application Pipeline](https://catalog.demo.redhat.com/catalog?item=babylon-catalog-prod/enterprise.redhat-tap-demo.prod&utm_source=webapp&utm_medium=share-link) demo
* Admin login to the Red Hat OpenShift cluster

## Preparation

1) Make a copies of files `ansible/inventory/main.yml.example` and  `ansible/inventory/platform.yml.example`.
2) Rename the files to `ansible/inventory/main.yml` and  `ansible/inventory/platform.yml`.
3) Review both files and change values, depending on your environment and requirements.

## Patching

Run the following playbook:

```shell
cd ansible

ansible-playbook -i inventory playbooks/patch.yml
```
