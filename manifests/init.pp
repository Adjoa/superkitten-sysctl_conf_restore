class restore(
  $filename = $restore::params::filename
) inherits restore::params {
  # Remove directory /etc/sysctl.conf
  exec {'rm -rf /etc/sysctl.conf':
    path => ['/usr/sbin', '/sbin', '/usr/bin', '/bin'],
  } ->
  # Create /etc/sysctl.conf file
  file {'/etc/sysctl.conf':
    ensure => file,
    source => "puppet:///modules/restore/${filename}",
    group  => 'root',
    owner  => 'root',
    mode   => '0644',
  }
}
