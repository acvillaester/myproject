class install_vsftpd {
        package { 'vsftpd':
                ensure => present,
                }
}
