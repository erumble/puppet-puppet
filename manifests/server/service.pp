# puppet::server::service
class puppet::server::service
{
  service{ $::puppet::server::service_name:
    ensure     => $::puppet::server::ensure,
    enable     => $::puppet::server::enable,
    hasrestart => true,
    hasstatus  => true,
  }
}

