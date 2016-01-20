# puppet::server
class puppet::server(
  # install params
  $manage_packages = true,
  $package_name    = 'puppetserver',
  $package_version = 'latest',

  # config params
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
  class { '::puppet::server::install': } ->
  class { '::puppet::server::config': } ~>
  class { '::puppet::server::service': } ->
  Class['puppet::server']
}

