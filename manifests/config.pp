#
class puppetserver::config(
  # puppet.conf settings
  # settings specified here are set to the default puppet values
  # https://docs.puppetlabs.com/references/latest/configuration.html
  $allow_duplicate_certs    = false,
  $always_cache_features    = false, # may want to set to true for puppet server
  $autosign                 = '$confdir/autosign.conf', # set to true for vagrant
  $ca                       = true,
  $codedir                  = '/etc/puppetlabs/code',
  


  $is_puppet_server = false,
  $is_ca_server     = false,
  $environment      = 'production',
  $runinterval      = '5m',

  $puppet_server = $puppetmaster::puppet_server,
  $report_server = $puppetmaster::report_server,
  $ca_server     = $puppetmaster::ca_server,
  $location      = $puppetmaster::location,
) {
  file { '/etc/puppetlabs/puppet/puppet.conf':
    ensure   => file,
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
    template => template('puppetmaster/puppetmaster.conf.erb'),
  }

  file { '/opt/puppetlabs/facter/facts.d/foundation.txt':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => "dnsname=${facts[networking][fqdn]}\nlocation=${location}",
  }

  ini_setting { 'example':
    ensure  => present,
    path    => '/path/to/ini',
    section => 'main',
    setting => 'foo',
    value   => 'bar',
  }
}
