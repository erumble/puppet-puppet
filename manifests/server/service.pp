# puppet::server::service
class puppet::server::service
{
  service{ 'puppetserver':
    ensure     => $::puppet::server::ensure,
    enable     => $::puppet::server::enable,
    hasrestart => true,
    hasstatus  => true,
  }
}

