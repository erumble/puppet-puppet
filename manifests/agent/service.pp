# puppet::agent::service
class puppet::agent::service(
  $ensure = 'running',
  $enable = true,
) {
  service { 'puppet':
    ensure     => $ensure,
    enable     => $enable,
    hasrestart => true,
    hasstatus  => true,
  }
}

