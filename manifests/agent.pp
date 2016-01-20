# puppet::agent
class puppet::agent(
  # config parameters
  # undef parameters will not be written to config files
  $always_cache_features = undef,
  $ca_server             = undef,
  $dns_alt_names         = undef,
  $environment           = undef,
  $reports               = undef,
  $report_server         = undef,
  $runinterval           = undef,
  $server                = undef,
  $strict_variables      = undef,

  # service parameters
  $ensure = 'running',
  $enable = true,
) {
  class { '::puppet::agent::config': } ~>
  class { '::puppet::agent::service': } ->
  Class['puppet::agent']
}

