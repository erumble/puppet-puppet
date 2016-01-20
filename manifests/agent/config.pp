# puppet::agent::config
class puppet::agent::config
{
  $ini_setting_defaults = {
    'path' => "/etc/puppetlabs/puppet/puppet.conf",
  }

  $ini_settings = {
    'main' => {
      'always_cache_features' => $::puppet::agent::always_cache_features,
      'ca_server'             => $::puppet::agent::ca_server,
      'dns_alt_names'         => $::puppet::agent::dns_alt_names,
      'environment'           => $::puppet::agent::environment,
      'reports'               => $::puppet::agent::reports,
      'report_server'         => $::puppet::agent::report_server,
      'runinterval'           => $::puppet::agent::runinterval,
      'server'                => $::puppet::agent::server,
      'strict_variables'      => $::puppet::agent::strict_variables,
    }.filter |$key, $value| { $value != undef }
  }

  create_ini_settings($ini_settings, $ini_setting_defaults)
}

