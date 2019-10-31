#
# Installs NVIDIA GPU drivers on Ubuntu.
# Desired version of the driver is passed as parameter.
#
class nvidia::redhat (Variant[Numeric, Enum['latest']] $version = 'latest') {
  package { ['nvidia-driver-latest-dkms', 'cuda']:
    ensure => installed,
  }
}
