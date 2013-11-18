class fisma::apps {
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
}
