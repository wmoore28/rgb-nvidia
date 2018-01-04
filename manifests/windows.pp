#
# Installs NVIDIA GPU drivers on Windows.
# Desired version of the driver is passed as parameter.
#
class nvidia::windows (Variant[Numeric, Enum['latest']] $version = 'latest') {
  include chocolatey

  package { 'nvidia-display-driver':
    ensure   => $version,
    provider => 'chocolatey',
  }
}
