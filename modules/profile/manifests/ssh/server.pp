# Sets ssh config for all instances
class profile::ssh::server {
    package { 'openssh-server':
        ensure => present,
    }

    file { '/etc/ssh/sshd_config':
        ensure  => present,
        owner   => 'root',
        group   => 'root',
        mode    => '0600',
      # source   => 'puppet:///profile/sshd_config',
         content => file('profile/ssh/sshd_config'),
         notify  => Service['sshd'],
    } 
    service { 'sshd':
        ensure     => running,
        hasstatus  => false,
        hasrestart => true,
        enable     => true,
        require    => Package['openssh-server'],
    }
}
