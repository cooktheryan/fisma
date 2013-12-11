class fisma::audit {
  package { "audit":
      ensure => 'installed',
}
service { "auditd":
      ensure => 'running',
      enable     => 'true',
      hasrestart => 'true',
      hasstatus  => 'true',
}
file { "/var/log/audit/":
      mode   => '0640',
      owner  => 'root',
      group  => 'root',
      recurse => 'true',
}
file { "/etc/audit/audit.rules":
      mode   => '0640',
      owner  => 'root',
      group  => 'root',
      source => "puppet://${puppetserver}/modules/fisma/audit.rules",
      notify => Service ['auditd'],
}
file { "/etc/audit/auditd.conf":
      mode   => '0640',
      owner  => 'root',
      group  => 'root',
      source => "puppet://${puppetserver}/modules/fisma/auditd.conf",
      notify => Service ['auditd'],
}
file { "/etc/audisp/plugins.d/syslog.conf":
      mode   => '0640',
      owner  => 'root',
      group  => 'root',
      source => "puppet://${puppetserver}/modules/fisma/syslog.conf",
      notify => Service ['auditd'],
}
}
