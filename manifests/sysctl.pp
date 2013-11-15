class fisma::sysctl {
  file_line { 'default_accept':
          path => '/etc/sysctl.conf',
          line => 'net.ipv6.conf.default.accept_redirects = 0',
}
  file_line { 'ipv4':
          path => '/etc/sysctl.conf',
          line => 'net.ipv4.conf.all.rp_filter = 1',
}
  file_line { 'secure_redir':
          path => '/etc/sysctl.conf',
          line => 'net.ipv4.conf.default.secure_redirects = 0',
}
  file_line { 'disableICMP':
          path => '/etc/sysctl.conf',
          line => 'net.ipv4.conf.default.accept_redirects = 0',
}
  file_line { 'martian':
          path => '/etc/sysctl.conf',
          line => 'net.ipv4.conf.all.log_martians = 1',
}
  file_line { 'secure-redirects':
          path => '/etc/sysctl.conf',
          line => 'net.ipv4.conf.all.secure_redirects = 0',
}
  file_line { 'accept-redirects':
          path => '/etc/sysctl.conf',
          line => 'net.ipv4.conf.all.accept_redirects = 0',
}
  file_line { 'send-all-redirects':
          path => '/etc/sysctl.conf',
          line => 'net.ipv4.conf.all.send_redirects = 0',
}
  file_line { 'send-redirects':
          path => '/etc/sysctl.conf',
          line => 'net.ipv4.conf.default.send_redirects = 0',
}
}
