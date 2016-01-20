# puppet::server::config
class puppet::server::config
{
  $ini_setting_defaults = {
    'path' => "${::puppet::dir}/puppet.conf",
  }

  $ini_settings = { 
    'master'                 => {
      'ca'                   => $::puppet::server::ca,
      'ca_server'            => $::puppet::server::ca_server,
      'autosign'             => $::puppet::server::autosign,
      'node_terminus'        => $::puppet::server::node_terminus,
      'external_nodes'       => $::puppet::server::external_nodes,
      'storeconfigs'         => $::puppet::server::storeconfigs,
      'storeconfigs_backend' => $::puppet::server::storeconfigs_backend,
    }
  }

  create_ini_settings($ini_settings, $ini_setting_defaults)
}

