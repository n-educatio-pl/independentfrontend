class spring::java::java {
  package { "openjdk-7-jdk": }
  package { "maven":
    require => Package["openjdk-7-jdk"],
  }
  package { "tomcat7":
    require => Package["openjdk-7-jdk"],
  }
  package { "tomcat7-admin":
    require => Package["tomcat7"],
  }
  file { "/etc/tomcat7/tomcat-users.xml":
    source => '/vagrant/manifests/modules/spring/manifests/java/tomcat-users.xml',
    require => Package["tomcat7"],
    notify => Service["tomcat7"],
  }
  service { 'tomcat7':
    ensure => running,
    require => Package['tomcat7'],
  }
}
