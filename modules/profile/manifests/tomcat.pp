class profile::tomcat { 
  class { "jdk": } 
  class { "tomcat": } 
}
