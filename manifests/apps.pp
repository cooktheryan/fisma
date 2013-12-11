class fisma::apps {
package { 'screen':
	ensure => 'present',
}
service { 'telnet':
    ensure => "stopped",
    enable => "false",
}
service { 'bluetooth':
    ensure => "stopped",
    enable => "false",
}
  file { "/etc/modprobe.d/disabled.conf":
    owner => 'root',
    group => 'root',
    mode => '644',
    source => "puppet://${puppetserver}/modules/fisma/disabled.conf",
}
service { 'rhnsd':
    ensure => "stopped",
    enable => "false",
}
service { 'abrtd':
    ensure => "stopped",
    enable => "false",
}
service { 'atd':
    ensure => "stopped",
    enable => "false",
}
service { 'crond':
    ensure => "running",
    enable => "true",
}
service { 'iptables':
    enable => "true",
}
}
