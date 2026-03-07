set positional-arguments := true

default:
    @just --list --unsorted

install-prerequisites:
    -@scripts/install-prerequsites.sh

build-jetson-rootfs *args="": install_packages
    -@scripts/build-base-rootfs.sh {{ args }}

build-jetson-image *args="":
    -@scripts/build-jetson-image.sh {{ args }}

flash-jetson-image Jetson-image device:
    @scripts/flash-jetson-image.sh {{ Jetson-image }} {{ device }}

clean:
    rm -rf base rootfs
    podman rmi -a -f
    sudo podman rmi -a -f
    sudo rm -rf jetson.img
