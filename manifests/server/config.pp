# puppet::server::config
class puppet::server::config(
  $ca                   = false,
  $ca_server            = undef,
  $autosign             = undef,
  $storeconfigs         = undef,
  $node_terminus        = undef,
  $external_nodes       = undef,
  $storeconfigs_backend = undef,
) {
  $ini_setting_defaults = {
    'path' => "${::puppet::dir}/puppet.conf",
  }

  $ini_settings = { 
    'master'                 => {
      'ca'                   => $ca,
      'ca_server'            => $ca_server,
      'autosign'             => $autosign,
      'node_terminus'        => $node_terminus,
      'external_nodes'       => $external_nodes,
      'storeconfigs'         => $storeconfigs,
      'storeconfigs_backend' => $storeconfigs_backend,
    }
  }

  create_ini_settings($ini_settings, $ini_setting_defaults)
}

