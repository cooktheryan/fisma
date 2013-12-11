class fisma::syslog {
	case $::operatingsystemmajrelease {
		/^5/: {
			package { 'sysklogd': 
				ensure => installed,
				before => File['/etc/syslog.conf'],
			}

			service { 'syslog':
				ensure     => running,
       				enable     => true,
				hasrestart => true,
				hasstatus  => true,
				subscribe  => File['/etc/syslog.conf'],
			}

			file { '/etc/syslog.conf':
				ensure => present,
				owner  => 'root',
				group  => 'root',
				mode   => '0644',
				source => "puppet://${puppetserver}/modules/syslog/syslog.conf",
			}
		}
		/^6/: {
			package { 'rsyslog':
				ensure => installed,
				before => File['/etc/rsyslog.conf'],
			}

			service { 'rsyslog':
				ensure     => running,
				enable     => true,
				hasrestart => true,
				hasstatus  => true,
				subscribe  => File['/etc/rsyslog.conf'],
			}

			file { '/etc/rsyslog.conf':
				ensure => present,
				owner  => 'root',
				group  => 'root',
				mode   => '0644',
				source => "puppet://${puppetserver}/modules/fisma/rsyslog.conf",
			}	
		}
		default: {
			fail("Module ${module_name} does not support Red Hat ${::operatingsystemmajrelease}")
		}
	}
}
