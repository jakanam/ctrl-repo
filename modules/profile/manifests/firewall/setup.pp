# Clears rules and sets up pre and post classes
class profile::firewall::setup {
    resources { 'firewall':
        purge => true
    }

    Firewall {
        before  => Class['profile::firewall::post'],
        require => Class['profile::firewall::pre'],
    }

    class { ['profile::firewall::pre', 'profile::firewall::post']: }

    class { 'firewall': }
}
