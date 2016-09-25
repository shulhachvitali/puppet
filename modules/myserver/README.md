# myserver

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with myserver](#setup)
    * [What myserver affects](#what-myserver-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with myserver](#beginning-with-myserver)
1. [Usage - Configuration options and additional functionality](#usage)

1. [Limitations - OS compatibility, etc.](#limitations)


## Description

Module "myserver" install pappet-master or puppet agent. It depends on the hostname (system factor is used)

## Setup
Vagrant start init.pp after first part of provisioninng (with script), during init.pp the node type definedes.
After that the official repository of puppet is installed, and version, defined in custom facts, are begun the installation.

### What myserver affects **OPTIONAL**
It affect on installation puppet-master or puppet client on the target node. 

### Setup Requirements **OPTIONAL**

Requares the latest vagrant and virtulbox. On windows host platform work is not guaranteed.
Better to use clear centos 7 from redhat.
### Beginning with myserver

Everything works itself after vagrant up command. Server and client is available in network, defined in the vagrantfile.

## Usage

Could be used to make good and peace!

## Limitations
OS LINUX redhat family better to use
