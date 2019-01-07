class role::webserver {

  #This role would be made of all the profiles that need to be included to make a webserver work
  #All roles should include the base profile
 # include profile::base


concat { '/tmp/concat':
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }
#include role::default
include stdlib
include locales
}
