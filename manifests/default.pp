node default {
include 'myserver'
#include '::myserver::master'
#include '::myserver::agent'
#  if $hostname == 'server'{ 
#   class {'::myserver::master'}}
#  else include 'myserver::agent'

}


