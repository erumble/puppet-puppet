# puppet::server::service
class puppet::server::service(
  $ensure = 'running',
  $enable = true,
) {
  service{ 'puppetserver':
    ensure     => $ensure,
    enable     => $enable,
    hasrestart => true,
    hasstatus  => true,
  }
}

