class screen {
   package { 'screen':
      ensure => installed,
   }
      
   file { 'screenrc':
      path    => '/etc/screenrc',
      ensure  => file,
      require => Package['screen'],
      source  => "puppet:///modules/screen/screenrc",
   }
}
