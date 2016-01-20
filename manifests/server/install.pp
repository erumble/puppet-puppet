# puppet::server::install
class puppet::server::install
{
  if $::puppet::server::manage_packages {
    package { $::puppet::server::package_name:
      ensure => $::puppet::server::package_version,
    }
  }
}

