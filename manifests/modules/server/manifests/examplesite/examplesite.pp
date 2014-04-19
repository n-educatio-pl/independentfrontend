class server::examplesite::examplesite {
  file { "/home/vagrant/www/frontendworkflow":
          force => true,
          ensure   => "link",
          target => "/vagrant/web",
  }
}