# nvidia

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with nvidia](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with nvidia](#beginning-with-nvidia)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module automates the installation of the closed source nvidia drivers.

The module allows you to specify which version you want to install, but it is also able to automatically detect the latest version.

The open source drivers NVIDIA drivers should always be replaced with the closed source drivers used for maximum GPU performance. For more information about open source vs. closed source NVIDIA drivers, see <https://help.ubuntu.com/community/BinaryDriverHowto/Nvidia>

## Setup

### Setup Requirements
A NVIDIA GPU must be present in order to install the drivers. If no NVIDIA GPU is detected the installation will fail.

**Windows:** If GPU drivers have already been installed from somewhere else than the Chocolatey package repository, please uninstall those drivers before using this module.

### Beginning with nvidia



## Usage
**Install the lastest NVIDIA drivers:**

```
include nvidia
```

**Install a specific version of the NVIDIA drivers:**

```
class { nvidia:
  version => 375
}
```

## Reference

### Parameters

* `version` 
 * Possible values are *'latest'* or any valid *Number*. 
 * Default value is *latest*.
 * Use this parameter if you want to install a specific version of the drivers. 
 * When specifying version, it is recommended to check that the parameter being passed is a valid version that is available in the package repositories. If the version is not available the installation will fail.

On Ubuntu the latest version is detected with the 'apt-cache pkgnames nvidia-' command paired with a regular expression.

### Driver origin
The drivers being installed are the closed-source drivers from NVIDIA, retrieved from the package repositories Restricted (on Ubuntu) and Chocolatey (on Windows).

The Restricted repository is an official Ubuntu repository used for packages where the source-code is not open. Read more about the repository here: <https://help.ubuntu.com/community/Repositories#Restricted>

Chocolatey is one of the most popular package repositories for Windows. Read more about the NVIDIA driver package on <https://chocolatey.org/packages/nvidia-display-driver>

## Limitations
* Supported operating systems are:
 * Ubuntu 14.04 and 16.04
 * Other versions of Ubuntu are probably also supported, but have not been tested.
 * Windows 7, 8, 10 and Server 2016. 
* Supported puppet versions are 4.7.0 and above.

On Ubuntu, a reboot might be required in order to use the new drivers after they have been installed.

The module detects if a NVIDIA GPU is present by looking at the PCI vendor ID of all the GPUs. It might not function correctly if both AMD and NVIDIA GPUs are present.

## Development

Everyone is welcome to contribute to the module, for instance by making a pull request.

Please report any issues that you experience, as long as they have not already been reported.
