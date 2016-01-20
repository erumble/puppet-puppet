# puppet::agent::service
class puppet::agent::service
{
  service { 'puppet':
    ensure     => $::puppet::agent::ensure,
    enable     => $::puppet::agent::enable,
    hasrestart => true,
    hasstatus  => true,
  }
}

