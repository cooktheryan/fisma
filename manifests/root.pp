class fisma::root {
  file { "/etc/sysconfig/init":
    owner => 'root',
    group => 'root',
    mode => '644',
    source => "puppet://${puppetserver}/modules/fisma/init",
}
  file { "/etc/securetty":
    owner => 'root',
    group => 'root',
    mode => '644',
    source => "puppet://${puppetserver}/modules/fisma/securetty",
}
  file { "/etc/init/control-alt-delete.conf":
    owner => 'root',
    group => 'root',
    mode => '644',
    source => "puppet://${puppetserver}/modules/fisma/control-alt-delete.conf",
}
}
