class users {
  group { 'devops':
    ensure => 'present',
    gid    => '502',
  }
  user { 'sampath':
    ensure           => 'present',
    gid              => '502',
    comment          => 'sampath',
    groups           => 'devops',
    password         => 'i91nSglJ/yfq8Kx2BYSPImlSehJDIfTu9lSNz9aqf2I=',
    shell            => '/bin/bash',
  }
  user { 'gundla':
    ensure           => 'present',
    gid              => '502',
    comment          => 'gundla',
    groups           => 'devops',
    password         => '2wvgLAU/mhVI/vaDUe3ar/gqIK1FH5z6hWGncwum/mY=',
    shell            => '/bin/bash',
  }
}

