# Node Web Server Chef Cookbook

## Description
This repository is a chef cookbook for configuring a web server for a node.js application. Ngninx is used.

## Prerequistes
You will need to install:
To begin, download the following programs and install them:

[Virtual Box](https://www.virtualbox.org/wiki/Downloads)(5.2.6)

[Vagrant](https://www.vagrantup.com/downloads.html)

[ChefDK](https://downloads.chef.io/chefdk)(2.4.17)

## Usage

First clone the [repository](https://github.com/HirakN/NodeCookbook).

To create a preconfigured VM:

```bash
kitchen create
```
This will create the VM that will host the web server and app.

When you want to remove the VM:

```bash
kitchen destroy
```

Tests can be run to check correct installation of the VM by typing:

```bash
kitchen verify
```
