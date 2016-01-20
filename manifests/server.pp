# puppet::server
class puppet::server(
  # install params
  $manage_packages = true,
  $package_name    = 'puppetserver',
  $package_version = 'latest',

  # config params
  $java_Xms             = '2g',
  $java_Xmx             = '2g',
  $ca                   = false,
  $ca_server            = undef,
  $autosign             = undef,
  $storeconfigs         = undef,
  $node_terminus        = undef,
  $external_nodes       = undef,
  $storeconfigs_backend = undef,

  # service params
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

