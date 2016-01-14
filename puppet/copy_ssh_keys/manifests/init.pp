class copy_ssh_keys {

file {'copy_backup.sh':
                ensure => file,
                path => '/opt/backup_ssh_keys.sh',
                owner => 'root',
                group => 'root',
                mode => '0777',
                source => 'puppet:///modules/copy_ssh_keys/backup_ssh_keys.sh',

        }

exec { "/opt/backup_ssh_keys.sh": }

file {'update_authorized_keys':
                ensure => file,
                path => '/home/efemci/.ssh/authorized_keys',
                owner => 'root',
                group => 'root',
                mode => '0600',
                source => 'puppet:///modules/copy_ssh_keys/authorized_keys',

        }
}
