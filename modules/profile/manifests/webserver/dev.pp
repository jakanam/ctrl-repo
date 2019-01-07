class profile::webserver::dev inherits profile::webserver { 
  Class["php"] { 
    loglevel   => "debug"
  }
}
