class pound::config () inherits pound {

  concat { $pound::params::conf:
    owner => 'root',
    group => 'root',
    mode  => '0644',
    notify => Service['pound'],
  }

  concat::fragment {'pound_global':
    target  => $pound::params::conf,
    content => template('pound/fragments/pound_head.erb','pound/fragments/pound_global.erb'),
    order   => '00',
  }

  case $operatingsystem {
    /^(Debian|Ubuntu)$/:{

      file { '/etc/default/pound':
        ensure  => file,
        content => "# Managed by Puppet modules/pound\nstartup=1\n",
      }

    }
    default:            {

    }
  }
}