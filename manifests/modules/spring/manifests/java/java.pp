class spring::java::java {
  package { "openjdk-7-jdk": }
  package { "maven":
    require => Package["openjdk-7-jdk"],
  }
  package { "tomcat7":
    require => Package["openjdk-7-jdk"],
  }
}
