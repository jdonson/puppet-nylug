class nylugbase {
  include apache, php5, devtools, misctools, mysql, jdk, sudo, users, mailutils, drush, pear, scripts, solr
}

class scripts {
  file { '/root/update-config.sh':
    ensure => present,
    owner => root,
    group => root,
    mode => 700,
    source => 'puppet:///modules/nylugbase/update-config.sh',
  }
}

class devtools {  
  package { 'git-core': ensure => installed }
}

class solr {
  package { [ 'solr-jetty', 'openjdk-6-jdk' ]: ensure => installed }
}

class apache { 
  package { [ 'apache2', 'libapache2-mod-php5' ]: ensure => installed }
}

class php5 { 
  package { [ 'php5', 'php5-mysql', 'php5-gd', 'php5-gmp', 'php5-curl' ]:
    ensure => installed,
    require => Class['apache', 'mysql'],
  }
}

class misctools {
  package { [ 'apg', 'binutils', 'sysbench', 'httperf' ]: ensure => installed }
}

class mysql {
  package { [ 'mysql-client', 'mysql-server', 'maatkit' ]: ensure => installed }
}

class jdk {
  package { [ 'default-jdk', 'ant1.8' ]: ensure => installed }
}

class sudo {
    file { "/etc/sudoers":
        owner => root,
        group => root,
        mode => 440,
    }
}

class mailutils {
  package { 'mailutils': ensure => installed }
}
