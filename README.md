##Final task short info:

1. Installation begins from setup epel repository to clear CENTOS/7 image

2. Update all with yum, install puppet v. 3.6

3. Vagrant starts pappet provision using internal modules (start of default.pp, wich include init.pp for main scenario)

4. Pappet define by hostname the scenario it should run and start configuration.

5. Custom resources in my case: 
facter vars for puppet-master and agent packet version, and autosign.conf file for singing all clients from the same domain with server.
 
 **File puppet.rb - is vagrant configuration file, wich was changed on 203 line for working with new version of puppet.

# This is repo for final task 
## Final task
Provide single puppet module which can setup both puppet master and puppet agent current version from repositories which provided by puppetlabs for example - you delivery plan can be following:
  1. provision clear box with CentOS 7
  2. setup available puppet from CentOS repo 
  3. Deliver all needed puppet code
  4. Apply your manifest with `puppet apply`
  
## Requirements

 1. Module should be able to setup correct set of repositories including signing keys
 2. Module should be able to make decision where it runs and understand when should be applied configuration for agent nodes and where for master node
 3. Puppet module should contain at least one custom fact for example `is_puppetmaster = true|false`
 4. Puppet module should contain erb tepmlates one or more
 5. Puppet module should be verified with puppet-lint and contains metadata.json
   5. Special task for getting maximal raiting: Add puppetdb and puppetdb explorer (https://github.com/dalen/puppetexplorer) configuration to part of your manifest which manages puppet server setup, both, puppetdb and puppetexplorer should be integrated, reports from agent should stores in puppetdb.
   6. Special Task 2: setup module management with r10k (https://github.com/puppetlabs/r10k) r10k basic setup should be done with puppet
   
##Defenition of done

 1. You have at least 2 VMs and can demostrate them, one is a puppet master and one is agent
 2. Your manifest can be applied locally on clear box and if you need predefines please ad them in documentation.
 3. Your code is available for review as pull request to this repository
 4. Vagrant file should be available in this repo
 
###Dead Line 26.09.2016 8AM MSQ time zone
