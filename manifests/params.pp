class restore::params {
  case $::operatingsystem {
  #  case "${::osfamily}-${::operatingsystemmajrelease}" {
    'Ubuntu': {
      $filename = 'ubuntu_initsysctl.conf'
    }
    'CentOS': {
      $filename = 'centos6_initsysctl.conf'
    }
    default: {
      $filename = 'centos7_initsysctl.conf'
    }
  } 
}
