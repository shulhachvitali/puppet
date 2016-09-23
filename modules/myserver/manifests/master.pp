class myserver::master {
yumrepo { 'puppetlabs-pc1':
ensure => 'present',
baseurl => 'http://yum.puppetlabs.com/el/7/PC1/$basearch',
descr => 'Puppet Labs PC1 Repository el 7 - $basearch',
enabled => '1',
gpgcheck => '1',
gpgkey => 'https://yum.puppetlabs.com/RPM-GPG-KEY-puppet https://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs'
}
package { 'puppetserver': 
             name => 'puppetserver',
             ensure => '2.6.0-1.el7',
                            }
 service { 'puppetserver':
             ensure => 'running',
             enable => 'true',
             require => Package['puppetserver'],
                            }

}
