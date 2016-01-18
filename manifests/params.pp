#
class puppet::params {
  # config.pp settings
  $server_certificate_authority = false
  $server_allow_duplicate_certs = false
  $server_autosign_certs        = false
  $server_node_terminus         = undef
  $server_external_nodes        = undef
  $server_storeconfigs          = false
  $server_storeconfigs_backend  = 'puppetdb'

  $reports               = 'store,puppetdb'
  $strict_variables      = false
  $always_cache_features = true

  $vardir          = '/opt/puppetlabs/puppet/cache'
  $logdir          = '/var/log/puppetlabs/puppet'
  $rundir          = '/var/run/puppetlabs'
  $pidfile         = '$rundir/${run_mode}.pid'
  $codedir         = '/etc/puppetlabs/code'
  $basemodulepath  = '$codedir/modules:/opt/puppetlabs/puppet/modules'
  $environmentpath = '$codedir/environments'

  $puppet_server = undef
  $report_server = undef
  $ca_server     = undef
  $dns_alt_names = undef
  $environment   = 'production'
  $runinterval   = '30m'
}
