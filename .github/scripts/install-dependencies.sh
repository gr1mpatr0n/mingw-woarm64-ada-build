#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "::group::Install Dependencies"
    sudo apt update
    sudo apt install -y \
      autoconf \
      autogen \
      automake \
      autotools-dev \
      binutils-for-build \
      bison \
      build-essential \
      busybox \
      ccache \
      dejagnu \
      docbook2x \
      flex \
      gdc \
      gnat-14 \
      jq \
      libc6-dev-arm64-cross \
      libc6-dev-amd64-cross \
      texinfo \
      xmlto \
      zlib1g-dev \
      zstd

    sudo update-alternatives --install /usr/bin/gnatmake gnatmake /usr/bin/gnatmake-14 1414 \
      --slave /usr/bin/gnat gnat /usr/bin/gnat-14 \
      --slave /usr/bin/gnatbind gnatbind /usr/bin/gnatbind-14 \
      --slave /usr/bin/gnatlink gnatlink /usr/bin/gnatlink-14 \
      --slave /usr/bin/gnatls gnatls /usr/bin/gnatls-14 \
      --slave /usr/bin/gnatclean gnatclean /usr/bin/gnatclean-14 \
      --slave /usr/bin/gnatchop gnatchop /usr/bin/gnatchop-14

    sudo update-alternatives --set gnatmake /usr/bin/gnatmake-14
echo "::endgroup::"

echo 'Success!'
