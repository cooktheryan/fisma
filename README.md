This module is an attempt to easily pass FISMA for RHEL/CENTOS 6. Due to not finding any similar modules I decided to start this one. If you have any questions/suggestions/other please message me.

This module requires https://forge.puppetlabs.com/puppetlabs/stdlib and https://github.com/fiddyspence/puppet-sysctl

Here are some false positives also I ran into with tenable.

1001900 TFTP Not enabled
1001873 False positive empty directory with 755 on the folder
1001872 False positive flagging symbolic links
1001871 False positive flagging symbolic links
1001869 False positive flagging symbolic links
1001868 False positive flagging symbolic links
1001857 False positive could not replicate
1001856 False Fositive nothing returned when running - find / -xdev -type d -perm 002 ! -perm 1000
1001851 Autofs is necessary for shared home directory access
1001850 IPV6 is not enabled
1001838 False positive - Last login: Wed Dec 11 13:31:52 2013 
1001832 Not DOD and FTPS/FTP services not running
1001782 False Positive nothing mounted with CIFS
1001781 False Positive Samba not installed by default
1001758 False positive non DoD Using internal time server
1001759 False positive Picked up comment lines
1001709 False Positive Checks are in place
1001708 False Positive Checks are in place
1001669 False Positive Lines are in place
1001668 Can be set if necessary
1001666 Can be set if necessary
1001660 False positive iptables        0:off   1:off   2:on    3:on    4:on    5:on    6:off
1001659 Not using any IPV6
1001658 Not using any IPV6
1001657 Not using any IPV6
