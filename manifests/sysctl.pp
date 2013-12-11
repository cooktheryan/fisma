class fisma::sysctl {
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
 sysctl { 'kernel.exec-shield':
     ensure    => 'present',
     permanent => 'yes',
     value     => '1',
}
 sysctl { 'kernel.randomize_va_space':
     ensure    => 'present',
     permanent => 'yes',
     value     => '2',
}
 sysctl { 'net.ipv4.conf.all.accept_source_route':
     ensure    => 'present',
     permanent => 'yes',
     value     => '0',
}
 sysctl { 'net.ipv4.icmp_echo_ignore_broadcasts':
     ensure    => 'present',
     permanent => 'yes',
     value     => '1',
}
 sysctl { 'net.ipv4.icmp_ignore_bogus_error_responses':
     ensure    => 'present',
     permanent => 'yes',
     value     => '1',
}
 sysctl { 'net.ipv4.conf.default.rp_filter':
     ensure    => 'present',
     permanent => 'yes',
     value     => '1',
}
}
