class package {
  Package {
    ensure      => 'installed'
  }

  package { 'python-pip':
    name        => 'python-pip',
  }

  exec { 'apt-update':
    command     => '/usr/bin/apt-get update'
  }

  package { 'apache2':
    require     => Exec['apt-update'],
  }

  $enhancers = [ 'libexpat1', 'apache2-utils', 'ssl-cert' ]

  package { $enhancers:
  }

  package { 'libapache2-mod-wsgi':
    require     => Package["apache2","python-pip","libexpat1","apache2-utils","ssl-cert"],
  }

  package { 'bottle':
    ensure       => '0.10.11',
    provider     => 'pip',
    require      => Package["python-pip", "libapache2-mod-wsgi"],
  }
}

