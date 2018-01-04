#
# Installs NVIDIA GPU drivers on Ubuntu.
# Desired version of the driver is passed as parameter.
#
class nvidia::ubuntu (Variant[Numeric, Enum['latest']] $version = 'latest') {
  if $version == 'latest' {
    $nvidia_version = $facts['nvidia-latest']        # Automatically finds the newest nvidia package
  }
  else {
    $nvidia_version = $version
  }

  package { "nvidia-${nvidia_version}":
    ensure => installed,
  }
}
