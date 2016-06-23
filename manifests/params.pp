# == Class artifactory::params
#
# This class is meant to be called from artifactory.
# It sets variables according to platform.
#
class artifactory_pro::params {
  $license_key     = undef
  $plugins_dir     = '/etc/opt/jfrog/artifactory/plugins'

  case $::osfamily {
    'Debian': {
      $package_name = 'artifactory'
      $service_name = 'artifactory'
    }
    'RedHat', 'Amazon': {
      $package_name = 'artifactory'
      $service_name = 'artifactory'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }

}