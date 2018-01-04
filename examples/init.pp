############################################
# Examples for using the rgb-nvidia module #
############################################
# 
# Install the latest driver:
#
include ::nvidia
#
# Install a specific driver:
#
class { 'nvidia':
  version => '375'
}
