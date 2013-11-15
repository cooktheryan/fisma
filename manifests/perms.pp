class fisma::perms {
    file { "/lib":
      recurse => "true",
      mode => "755",
}
    file { "/lib64":
      recurse => "true",
      mode => "755",
}
    file { "/usr/lib":
      recurse => "true",
      mode => "755",
}
    file { "/usr/lib64":
      recurse => "true",
      mode => "755",
}
}
