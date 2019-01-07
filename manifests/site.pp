#This is the main site.pp to hold node def but we will use hiera instead so tell hiera to include classes:
#--------------------------------------------------------------------------------------------------------
node default {
  hiera_include('classes')
}
