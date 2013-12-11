class fisma::accounts {
file_line { 'sessions':
          path => '/etc/security/limits.conf',
          line => '* hard maxlogins 10',
}
file_line { 'core_dump':
          path => '/etc/security/limits.conf',
          line => '*     hard   core    0',
}
file { "/etc/login.defs":
      mode   => '0644',
      owner  => 'root',
      group  => 'root',
      source => "puppet://${puppetserver}/modules/fisma/login.defs",
      notify => Service ['auditd'],
}
file { "/etc/default/useradd":
      mode   => '0644',
      owner  => 'root',
      group  => 'root',
      source => "puppet://${puppetserver}/modules/fisma/useradd",
      notify => Service ['auditd'],
}
file { "/etc/bashrc":
      mode   => '0644',
      owner  => 'root',
      group  => 'root',
      source => "puppet://${puppetserver}/modules/fisma/bashrc",
}
file { "/etc/profile":
      mode   => '0644',
      owner  => 'root',
      group  => 'root',
      source => "puppet://${puppetserver}/modules/fisma/profile",
}
file { "/etc/init.d/functions":
      mode   => '0644',
      owner  => 'root',
      group  => 'root',
      source => "puppet://${puppetserver}/modules/fisma/functions",
}
file { "/etc/csh.cshrc":
      mode   => '0644',
      owner  => 'root',
      group  => 'root',
      source => "puppet://${puppetserver}/modules/fisma/csh.cshrc",
}
file { '/etc/pam.d/system-auth-ac':
      mode   => '0644',
      owner  => 'root',
      group  => 'root',
      source => "puppet://${puppetserver}/modules/fisma/system-auth",
}
file { '/etc/pam.d/system-auth':
      ensure => link,
      target => '/etc/pam.d/system-auth-ac',
}
file { '/etc/pam.d/password-auth-ac':
      mode   => '0644',
      owner  => 'root',
      group  => 'root',
      source => "puppet://${puppetserver}/modules/fisma/password-auth",
}
}
