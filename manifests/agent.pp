# puppet::agent
class puppet::agent {
  class { '::puppet::agent::config': } ~>
  class { '::puppet::agent::service': } ->
  Class['puppet::agent']
}

