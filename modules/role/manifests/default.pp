# Since we are employing the profiles and roles pattern, each node will be assigned a class from our roles module by hiera, each role will
# include various classes from the profiles module, these classes will configure particular packages (such as OpenVPN) along
# with any related packages or configuration files.

# default servers role
#-----------------------

class role::default {
    include profile::base
}
