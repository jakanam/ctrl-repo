# Since we are employing the profiles and roles pattern, each node will be assigned a class from our roles module by hiera, each role will
# include various classes from the profiles module, these classes will configure particular packages (such as OpenVPN) along
# with any related packages or configuration files.

# default servers PROFILE
#-------------------------

# Config common to all nodes
class profile::base {
    # common users
   $user_accounts = hiera('users')
   create_resources(user, $user_accounts)  
   #users { 'common': }

    # sshd config
    include profile::ssh::server

    # base firewall config
   ##### include profile::firewall::setup

    # common packages needed everywhere
    package {[
            'vim',
            'sudo',
            'screen'
        ]:
        ensure => present,
    }

    # set locale
    #class { 'locales':
    #    default_locale => 'en_GB.UTF-8',
    #    locales        => ['en_GB.UTF-8 UTF-8'],
    #}
}
