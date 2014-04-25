class common::db::mysql {
  user { "mysql":
    ensure => present,
    require => Package["mysql-server"],
  }
  package { "mysql-server" :
    ensure => installed
  }

  service { "mysql":
    ensure => running,
    enable => true,
    name => $operatingsystem ? {
      /RedHat|Fedora|CentOS/ => "mysqld",
      default => "mysql",
    },
    require => Package["mysql-server"],
  }

  exec { 'set-mysql-password':
    unless  => 'mysqladmin -uroot -proot status',
    command => "mysqladmin -uroot password root",
    path    => ['/bin', '/usr/bin'],
    require => Service['mysql'];
  }
}
