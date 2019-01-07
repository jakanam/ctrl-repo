class profile::webserver { 
  # Configuration for all webservers
  class { "apache": } 
  class { "apache::php": } 
  #class { "memcache": } 
}
