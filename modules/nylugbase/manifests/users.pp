class users {
  user { 'bgupta':
    ensure           => 'present',
    comment          => 'Brian Gupta,,,',
    gid              => '1000',
    groups           => ['adm', 'dialout', 'cdrom', 'plugdev', 'lpadmin', 'sambashare', 'admin'],
    home             => '/home/bgupta',
    password         => '$6$GzgZi23J$5BPds66kVeDyi0drvn83diQy24W/Obtlxxfe99GB7evDBpZuRzDrPUhsz3QL8xLEYuSvvixKS/OLMEjlGJAH7/',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/bash',
    uid              => '1000',
  }

  user { 'jdonson':
    ensure           => 'present',
    gid              => '1001',
    home             => '/home/jdonson',
    password         => '$6$ugh0sIG9$dF/juzh36YCxdxjo7tcqBW2Cyeo5lzqAGlEobYhxNaTQajtku1sm1SsCLTJ6NyNfXgSw57LmiQ96VdIOcRkbv1',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/bash',
    uid              => '1001',
  }

  user { 'jjdonson':
    ensure => absent,
  }

  user { 'jturdiev':
    ensure           => 'present',
    gid              => '1003',
    home             => '/home/jturdiev',
    password         => '$6$QmwTon/9$G1R5yUjxSHSbYaRdEyjf8N4.bACFaKdZqlM4ZK8RjQhiN.aQFwlMckPXVzxY5Z.z31YCW7KPJNB97Spr/Lxdt1',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/sh',
    uid              => '1003',
  }

  user { 'rmenes':
    ensure           => 'present',
    comment          => 'Robert Menes,,(347)-985-5954,',
    gid              => '1002',
    groups           => ['admin'],
    home             => '/home/rmenes',
    password         => '$6$kXZQn.4i$PMEKTnDPOdT3v/TMP.vMRYNaF0X.iw9z/QuGa9LY8cc.2xLzF/vn2LCuJD/jDoa/4XTvsj0lDauZvQliaTWuO1',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/bash',
    uid              => '1004',
  }
}
