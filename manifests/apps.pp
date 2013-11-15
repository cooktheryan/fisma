class fisma::apps {
service { 'telnet':
    ensure => "stopped",
    enable => "false",
}
}
