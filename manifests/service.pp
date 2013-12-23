class pound::service {

  service { 'pound':
    enable     => true,
    ensure     => running,
    hasrestart => true,
    hasstatus  => true,
    require    => Class["pound"],
  }

}