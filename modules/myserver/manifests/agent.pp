class myserver::agent {
yumrepo { 'puppetlabs-pc1':
ensure => 'present',
baseurl => 'http://yum.puppetlabs.com/el/7/PC1/$basearch',
descr => 'Puppet Labs PC1 Repository el 7 - $basearch',
enabled => '1',
gpgcheck => '1',
gpgkey => 'https://yum.puppetlabs.com/RPM-GPG-KEY-puppet https://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs'
}
package { 'puppet-agent': 
             name => 'puppet-agent',
             ensure => '1.6.2-1.el7',
                            }
 service { 'puppet':
             ensure => 'running',
             enable => 'true',
             require => Package['puppet-agent'],
                            }

}
#https://yum.puppetlabs.com/el/7/PC1/x86_64/puppet-agent-1.6.2-1.el7.x86_64.rpm
