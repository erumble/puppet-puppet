# puppet::server
class puppet::server(
  # install parameters
  $manage_packages = true,
  $package_name    = 'puppetserver',
  $package_version = 'latest',

  # config parameters
  # undef parameters will not be written to config files
  $java_Xms              = '2g',
  $java_Xmx              = '2g',
  $ca                    = undef,
  $ca_server             = undef,
  $autosign              = undef,
  $storeconfigs          = undef,
  $node_terminus         = undef,
  $external_nodes        = undef,
  $storeconfigs_backend  = undef,
  $allow_duplicate_certs = undef,

  # service parameters
  $ensure = 'running',
  $enable = true,
) {
  validate_re($java_Xms, '^[0-9]+[kKmMgG]$')
  validate_re($java_Xmx, '^[0-9]+[kKmMgG]$')

  class { '::puppet::server::install': } ->
  class { '::puppet::server::config': } ~>
  class { '::puppet::server::service': } ->
  Class['puppet::server']
}

