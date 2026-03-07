## 2026-03-07

### Summary

- ubuntu: 21.04 and 23.04
- apt-sources: 21.04 and 23.04
- changes to all container.rootfs files
- indentation for netcfg.yaml

### Added

- ubuntu 21.04
- ubuntu 23.04
- apt-sources directory with soucers.list files for 21.04 and 23.04

### Updates

- added docker related packages to all container.rootfs files
- added ENV TZ=Etc/UTC DEBIAN_FRONTEND=noninteractive to all container.rootfs files

## 2024-05-27

### Summary

- ubuntu: 22.04
- L4T32: 32.7.4
- L4T35: 35.5.0
- L4T36: 36.3.0

### Added

- ubuntu 24.04

### Updates

- Update to ubuntu 22.04

### Changes

##### Removed

- remove `python-jetson-gpio` debian package. Refer to https://github.com/NVIDIA/jetson-gpio to use gpio

## 2023-12-02

### Summary

- ubuntu: 20.04
- L4T32: 32.7.4
- L4T35: 35.4.1

### Added

Add support for:

- jetson nano revision 100
- jetson orin nano
- jetson agx xavier
- jetson xavier nx

## 2023-11-26

### Summary

- ubuntu: 20.04
- BSP: 32.7.4

### Changes

- Fix the wrong permissions on /home/jetson and /tmp
- Fix the names of the release images

## 2023-11-25

- Fix DNS nameserver override issue
- Fix resize rootfs
- Update BSP to 32.7.4
