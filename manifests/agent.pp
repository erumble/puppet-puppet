# puppet::agent
class puppet::agent(
  # config parameters
  $always_cache_features = true,
  $ca_server             = undef,
  $dns_alt_names         = undef,
  $environment           = undef,
  $reports               = undef,
  $report_server         = undef,
  $runinterval           = undef,
  $server                = undef,
  $strict_variables      = false,

  # service parameters
  $ensure = 'running',
  $enable = true,
) {
  class { '::puppet::agent::config': } ~>
  class { '::puppet::agent::service': } ->
  Class['puppet::agent']
}

