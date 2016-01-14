class create_user {
                user { 'testuser':
                ensure => present,
                home => '/home/testuser',
                managehome => true,
                password => '$6$E1q1Tq07VvbCIQjD$DvLbqYl8LB4NIFm0sdsO4HcpOwn.qtwoIGA851hqaxgrbs/IS6n9FitRa2vGTkP5V.go8wb41by7wCZKUWxWF1',
             }
}
