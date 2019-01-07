class role::www::dev inherits role::www { 
  include profile::webserver::dev
  include profile::database
}
