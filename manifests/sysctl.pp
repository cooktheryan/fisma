class fisma::sysctl {
 sysctl { 'net.ipv6.conf.default.accept_redirects':
     ensure    => 'present',
     permanent => 'yes',
     value     => '0',
}

 sysctl { 'net.ipv4.conf.all.rp_filter':
     ensure    => 'present',
     permanent => 'yes',
     value     => '1',
}
 sysctl { 'net.ipv4.conf.default.secure_redirects':
     ensure    => 'present',
     permanent => 'yes',
     value     => '0',
}
 sysctl { 'net.ipv4.conf.default.accept_redirects':
     ensure    => 'present',
     permanent => 'yes',
     value     => '0',
}
 sysctl { 'net.ipv4.conf.all.log_martians':
     ensure    => 'present',
     permanent => 'yes',
     value     => '1',
}
 sysctl { 'net.ipv4.conf.all.secure_redirects':
     ensure    => 'present',
     permanent => 'yes',
     value     => '0',
}
 sysctl { 'net.ipv4.conf.all.accept_redirects':
     ensure    => 'present',
     permanent => 'yes',
     value     => '0',
}
 sysctl { 'net.ipv4.conf.all.send_redirects':
     ensure    => 'present',
     permanent => 'yes',
     value     => '0',
}
 sysctl { 'net.ipv4.conf.default.send_redirects':
     ensure    => 'present',
     permanent => 'yes',
     value     => '0',
}
}
