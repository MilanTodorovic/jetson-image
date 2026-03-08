#!/usr/bin/env bash

PACKAGES=("jq" "podman" "qemu-user-static")

echo "Checking if the following packages are installed on the host system: ${PACKAGES[*]}"
echo ""

for PACKAGE in "${PACKAGES[@]}"; do
    if ! dpkg -s $PACKAGE &> /dev/null
    then
        echo "  Package $PACKAGE missing from host system."
        echo "    Searching for package in apt..."
        if apt-cache --names-only search "^$PACKAGE$"
        then
            echo "    Package available thru apt-get."
            sudo apt-get install --no-install-recommends -y $PACKAGE
        else
            echo "    Package not found in apt, trying snap..."
            sudo snap install $PACKAGE
        fi
    else
        echo "  Package $PACKAGE installed."
    fi
    echo ""
done
echo "All good. Proceding to build script."
echo ""