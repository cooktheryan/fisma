class fisma::grub {
        # Correct all kernel lines to have the needed console parameters
        augeas { "grub-set-kernel-consoles":
            context => "/files/boot/grub/menu.lst",
            changes => [
                "set /files/boot/grub/menu.lst/title/kernel/ audit=1",
            ],
        }
augeas {
  "Add SHA-512 password to Grub":
    context => "/files/boot/grub/menu.lst",
    changes => [
      "ins password after timeout",
      "clear password/encrypted",
      "set password \$PASSWORDSHAHASH",
    ],
    onlyif  => "match password size == 0";
}
}
