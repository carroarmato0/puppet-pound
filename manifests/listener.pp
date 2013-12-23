define pound::listener (
  $address     = '0.0.0.0',
  $port        = 80,
  $ssl         = false,
  $certificate = '',
  $services    = [],
) {

  include pound

  concat::fragment {"$name":
    target  => $pound::params::conf,
    content => template('pound/listener.erb'),
    order   => '10',
  }

}