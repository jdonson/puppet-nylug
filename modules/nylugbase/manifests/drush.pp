class drush {
  package { 'php5-cli': 
    ensure => installed,
    require => Class['php5', 'devtools'],
  }

  pear::package { "PEAR": }

  pear::package { "drush":
    version => "5.4.0",
    repository => "pear.drush.org",
    require => Package['php5-cli'],
  }
}
