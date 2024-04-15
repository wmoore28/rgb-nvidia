#
# Installs NVIDIA GPU drivers on Ubuntu.
# Desired version of the driver is passed as parameter.
#
class nvidia::redhat (Variant[Numeric, Enum['latest']] $version = 'latest') {
  package { 'cuda':
    ensure => installed,
    notify => Exec['initialize_gpus'],
  }
  
  exec { 'initialize_gpus':
    command     => '/bin/nvidia-smi --compute-mode=EXCLUSIVE_PROCESS',
    refreshonly => true,
  }
}
