class fisma::ssh {
  file { "/etc/ssh/sshd_config":
    owner => 'root',
    group => 'root',
    mode => '600',
    source => "puppet://${puppetserver}/modules/fisma/sshd_config",
    notify => Service['sshd'],
  }
  
  service {'sshd':
    ensure => 'running',
  }
file { "/etc/motd":
  ensure => present,
  content => "",
}
  file { "/etc/issue":
    owner => 'root',
    group => 'root',
    mode => '644',
    source => "puppet://${puppetserver}/modules/fisma/issue",
  }
  
}
