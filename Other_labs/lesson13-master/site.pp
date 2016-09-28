node 'puppet1.server.com' {
  class { '::mysql::server':
      root_password    => '$1$eaLIq6wK$LyfIhSvZfTqeAsEwzPbVb1',
      override_options => {
         'mysqld' => { 'max_connections' => '50' }
      },
   } 
   
      mysql_database { 'prod_mdb':
               ensure  => present,
               charset => 'utf8',
      }  
      
      mysql_user { 'prod_user@localhost':
               ensure => present,
      }
     
      mysql_grant { 'prod_user@localhost/prod_mdb.*':
           ensure     => present,
           options    => ['GRANT'],
           privileges => ['ALL'],
           table      => 'prod_mdb.*',
           user       => 'prod_user@localhost',
      }
  package { 'nginx':
        ensure => 'installed'}

  notify { 'Nginx is installed.':}

  service { 'nginx':
        ensure => 'running'}

  notify { 'Nginx is running.':}
}
