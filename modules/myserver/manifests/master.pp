class myserver::master {
  yumrepo { 'puppetlabs-pc1':
    ensure   => 'present',
    baseurl  => 'http://yum.puppetlabs.com/el/7/PC1/$basearch',
    descr    => 'Puppet Labs PC1 Repository el 7 - $basearch',
    enabled  => '1',
    gpgcheck => '1',
    gpgkey   => 'https://yum.puppetlabs.com/RPM-GPG-KEY-puppet https://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs'
  }
  
  package { 'puppetserver': 
    name    => 'puppetserver',
    ensure  => $::server_ver,
    require =>  yumrepo['puppetlabs-pc1'],
  }
  
  file { '/etc/puppetlabs/puppet/autosign.conf':
    ensure  => file,
    content => template('myserver/autosign.erb'),
    owner   => root,
    group   => root,
    mode    => '0644',
    backup  => false,
    require => file['/etc/puppetlabs/puppet/autosign.conf'],
  }	    
		
  service { 'puppetserver':
    ensure  => 'running',
    enable  => 'true',
    require => file['/etc/puppetlabs/puppet/autosign.conf'],
  }
}
