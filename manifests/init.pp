#
class puppet(
  $server_certificate_authority = puppet::params::server_certificate_authority,
  $server_allow_duplicate_certs = puppet::params::server_allow_duplicate_certs,
  $server_autosign_certs        = puppet::params::server_autosign_certs,
  $server_node_terminus         = puppet::params::server_node_terminus,
  $server_external_nodes        = puppet::params::server_external_nodes,
  $server_storeconfigs          = puppet::params::server_storeconfigs,
  $server_storeconfigs_backend  = puppet::params::server_storeconfigs_backend,

  $reports               = puppet::params::reports,
  $strict_variables      = puppet::params::strict_variables,
  $always_cache_features = puppet::params::always_cache_features,

  $vardir          = puppet::params::vardir,
  $logdir          = puppet::params::logdir,
  $rundir          = puppet::params::rundir,
  $pidfile         = puppet::params::pidfile,
  $codedir         = puppet::params::codedir,
  $basemodulepath  = puppet::params::basemodulepath,
  $environmentpath = puppet::params::environmentpath,

  $puppet_server = puppet::params::puppet_server,
  $report_server = puppet::params::report_server,
  $ca_server     = puppet::params::ca_server,
  $dns_alt_names = puppet::params::dns_alt_names,
  $environment   = puppet::params::environment,
  $runinterval   = puppet::params::runinterval,
) {
  class{ 'puppet::install': } ->
  class{ 'puppet::config': } ~>
  class{ 'puppet::service': }
}
