# puppet::server::install
class puppet::server::install(
  $manage_packages = true,
  $package_name    = 'puppetserver',
  $package_version = 'latest',
) {
  if $manage_packages {
    package { $package_name:
      ensure => $package_version,
    }
  }
}

