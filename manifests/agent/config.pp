# puppet::agent::config
class puppet::agent::config(
  $always_cache_features = true,
  $ca_server             = undef,
  $dns_alt_names         = undef,
  $environment           = undef,
  $reports               = undef,
  $report_server         = undef,
  $runinterval           = undef,
  $server                = undef,
  $strict_variables      = false,
) {
  $ini_setting_defaults = {
    'path' => "${::puppet::dir}/puppet.conf",
  }

  $ini_settings = {
    'main' => {
      'always_cache_features' => $always_cache_features,
      'ca_server'             => $ca_server,
      'dns_alt_names'         => $dns_alt_names,
      'environment'           => $environment,
      'reports'               => $reports,
      'report_server'         => $report_server,
      'runinterval'           => $runinterval,
      'server'                => $server,
      'strict_variables'      => $strict_variables,
    }
  }

  create_ini_settings($ini_settings, $ini_setting_defaults)
}

