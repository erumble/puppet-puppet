# puppet-puppet
puppet module for managing puppet

### This module makes the following assumptions:
1. The puppet version is >= 4.0
2. puppet agent has already been installed
3. any config values not explicitly set will not be written to the puppet.conf file

## Classes
Class parameters without a description are written to the puppet.conf file
Descriptions for the parameters can be found [in the puppet config docs](http://docs.puppetlabs.com/puppet/latest/reference/configuration.html)

### puppet::agent
#### Parameters:
* always_cache_features
* ca_server
* dns_alt_names
* environment
* reports
* report_server
* runinterval
* server
* strict_variables

### puppet::server
#### Parameters:
* manage_packages
  * whether or not puppet should manage the puppetserver package, defualts to `true`
* package_name
  * name of the puppet server package, defaults to `puppetserver`
* package_version
  * specific version of the puppet server package to install, defaults to `latest`
* ensure
  * determines if the puppet server service should be running or not, defaults to `running`
* enable
  * determines if the puppet server service should be enabled on startup, defaults to `true`
* java_Xms
  * the minimum java heap size, defaults to `2g`, accepts values matching regex `^[0-9]+[kKmMgG]$`
* java_Xmx
  * the maximum java heap size, defaults to `2g`, accepts values matching regex `^[0-9]+[kKmMgG]$`
* ca
* ca_server
* autosign
* storeconfigs
* node_terminus
* external_nodes
* storeconfigs_backend

