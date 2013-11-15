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
}
