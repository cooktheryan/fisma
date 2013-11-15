class fisma::apps {
service { 'telnet':
    ensure => "stopped",
    enable => "false",
}
service { 'bluetooth':
    ensure => "stopped",
    enable => "false",
}
}
