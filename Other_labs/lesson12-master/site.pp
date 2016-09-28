node 'puppet1.server.com' {
  class { '::mysql::server':
      root_password    => '$1$eaLIq6wK$LyfIhSvZfTqeAsEwzPbVb1',
      override_options => {
         'mysqld' => { 'max_connections' => '50' }
      },
   } 
   
      mysql_database { 'test_mdb':
               ensure  => present,
               charset => 'utf8',
      }  
      
      mysql_user { 'test_user@localhost':
               ensure => present,
      }
     
      mysql_grant { 'test_user@localhost/test_mdb.*':
           ensure     => present,
           options    => ['GRANT'],
           privileges => ['ALL'],
           table      => 'test_mdb.*',
           user       => 'test_user@localhost',
      }
}
