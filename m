Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 233224C803A5
	for <yocto@yoctoproject.org>; Wed,  1 Dec 2010 18:19:20 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2010 16:19:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,285,1288594800"; 
	d="p7s'?scan'208";a="632204977"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 01 Dec 2010 16:19:19 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 1 Dec 2010 16:19:18 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Wed, 1 Dec 2010 16:19:18 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "Lu, Lianhao" <lianhao.lu@intel.com>, 
	"Tian, Kevin" <kevin.tian@intel.com>
Date: Wed, 1 Dec 2010 16:19:14 -0800
Thread-Topic: yocto_installer test script update
Thread-Index: AcuRP2G+ThJAQacvTRywh28cpIwTgQAdMP0g
Message-ID: <9AFCD584B0B67B48AE8D8585BE30BA950208643C@orsmsx504.amr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659732FF6C134@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659732FF6C134@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto_installer test script update
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Dec 2010 00:19:20 -0000
X-Groupsio-MsgNum: 436
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0000_01CB9173.7E564280"

------=_NextPart_000_0000_01CB9173.7E564280
Content-Type: multipart/mixed;
	boundary="----=_NextPart_001_0001_01CB9173.7E5AFD70"

------=_NextPart_001_0001_01CB9173.7E5AFD70
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Liping,

I've modified couple files mainly for the messaging, styling, etc.  Also,
globaly changed SDK to ADT (Application Development Tools, which is the new
name that came out refering to the toolchains, etc.).  Please see
attachment.

Other comments:
1. I'd expect after your do the code clean up, the code logic flow should be
more clearer, now the functions and main installation  code are mingled
together
2. There're couple places that I commented off with my initial JZ which I
don't think there're the needs for the code, we can walk through them
tonight...
3. For target sysroot setup, I'd expect similar prompt to the user about the
specified configuration and confirmation
4. Also for target sysroot setup, in the yocto_config file, you specify
ROOTFS_powerpc="sdk"
TARGET_SYSROOT_IMAGE_powerpc="sato"
I'd expect the installer will run into error since the download images only
contain SDK no sato, sysroot can't be setup using sato, which I think it's
missing from the current code...

In general it looks good and main flow that needs to be covered are there...

Thanks,
Jessica


-----Original Message-----
From: Ke, Liping 
Sent: Wednesday, December 01, 2010 2:06 AM
To: Zhang, Jessica; Lu, Lianhao; Tian, Kevin
Cc: yocto@yoctoproject.org
Subject: yocto_installer test script update

Hi, Jessica

The newer version of the installer is in lianhao's location. You can
directly run ./yocto_installer
http://llu-piketon.sh.intel.com/ Today we tested both on 32 bit and 64 bit
ubuntu host.

It's very initial and rough, I will move many non-root required ops into the
outer wrapper script later. 

Any early comments are welcomed, just let me know.

Thanks& Regards,
criping



------=_NextPart_001_0001_01CB9173.7E5AFD70
Content-Type: application/octet-stream;
	name="yocto_main"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="yocto_main"

#!/bin/bash

# Yocto Application Development Tools(ADT) Installer
#
# Copyright (C) 2010 Intel Corp.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

confirm_install()
{
# below are prompt, make sure user still want to install even meet
# some prompts

while true; do
  echo -n "Do you want to continue installation, this may trigger existing =
installed contents being overriden, please enter Y/N:"
  read YOCTOADT_INSTALL
  YOCTOADT_INSTALL=3D`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_INSTALL"`
  if [ "$YOCTOADT_INSTALL" =3D=3D "Y" ]; then
    echo -e "\nBeginning installation process...\n"
    break;
  elif [ "$YOCTOADT_INSTALL" =3D=3D "N" ]; then
    echo -e "\n\n\nUser cancelled installation!\n\n\n"
    exit -1
  fi
done
}

print_install_header_info ()
{
#installer welcome UI
source .config
source yocto_config

INST_ARCH=3D`uname -m`

case $INST_ARCH in=20
i[3-6]86)
  OPKG_CONFIG_FILE=3D$YOCTOADT_OPKG_CONF_FILE_32
  POKY_NATIVE_SYSROOT=3D"/opt/poky/sysroots/i586-pokysdk-linux/"
  ;;
x86_64)
  OPKG_CONFIG_FILE=3D$YOCTOADT_OPKG_CONF_FILE_64
  POKY_NATIVE_SYSROOT=3D"/opt/poky/sysroots/x86_64-pokysdk-linux/"
  ;;
*)
  echo "Error: Host machine is not supported!"
  exit -1
  ;;
esac

INST_OS=3D`uname -o | tr '[A-Z]' '[a-z]'`
INST_KR=3D`uname -r | tr '[A-Z]' '[a-z]'`

echo "################################################################"
echo "# Welcome to Yocto Application Developement Tools(ADT) Installer"
echo "#                                                               "
echo "# Host machine:                      $INST_ARCH"
echo "# OS info:                           $INST_OS $INST_KR"
echo "# Yocto ADT version to be installed: $YOCTOADT_VERION"
echo "# supported target architectures:    $YOCTOADT_SUPPORTED_TARGETS"
echo "# supported target root_fs images:   $YOCTOADT_SUPPORTED_ROOTFS"
echo "# opkg configuration file:           $OPKG_CONFIG_FILE"
echo "#                                                               "
echo -e "################################################################\n=
\n"

echo -e "Systemwide installation.  Installation will occur under /opt/poky\=
n"
echo "##################################################################"
echo "#Please confirm your installation configurations from yocto_config"
echo "##################################################################"
echo "# Cross toolchains:      $YOCTOADT_TARGETS"
echo "# Install Qemu:          $YOCTOADT_QEMU"
echo "# Install NFS utilities: $YOCTOADT_NFS_UTIL"
echo "# Install bitbake + UI:  $YOCTOADT_BITBAKE"
echo -e "# Install poky metadata: $YOCTOADT_METADATA\n"

confirm_install
}

check_result()
{
  result=3D"$?"
  echo "result $result"
  if [ ! "$result" =3D=3D "0" ]; then
    echo "Error: Terminate installation processi due to errors!"
    exit -1
  fi
}


OPKG_LIBDIR=3D"/var/lib"
LOCAL_OPKG_LOC=3D"./opkg"
# where the packages are installed. Currently only / is supported
NATIVE_INSTALL_DIR=3D"/"

source yocto_config

print_install_header_info

#detect opkg installed or not, for installing sdk, we will use
#this installed opkg
#installation step 1
install_opkg()
{
if [ ! -x "$LOCAL_OPKG_LOC/bin/opkg-cl" ]; then
  echo "OPKG is not setup. Setting it up which is required..."
  if [ ! -f opkg-*.gz ]; then
    echo "Error: OPKG source tarball is not found!"
    exit -1
  fi

  if [ -d "$LOCAL_OPKG_LOC" ]; then
    echo "Delete old OPKG source folders."
    rm -rf $LOCAL_OPKG_LOC
  fi
 =20
  tar zvfx opkg-*.gz
  cd opkg-*
  ./configure --prefix=3D${PWD}/../$LOCAL_OPKG_LOC --with-opkglibdir=3D$OPK=
G_LIBDIR --disable-curl --disable-ssl-curl --disable-gpg --disable-shave
  make
  make install
  #if meet error when installing opkg, cancel the installation
  check_result
  cd ..
  echo -e "Successfully installed OPKG.\n"
# JZ Do we need this kind msg?
#JZ else
#JZ  echo -e "Package Installation Tools OPKG detected.\n"
fi
}

#let us install a qemu-native firstly
#installation step 2
install_native_sdk()
{
if [ -d "/opt/poky" ]; then
  echo -e "Folder \"/opt/poky\" already exists!\n"
  confirm_install
fi

#we need to make this directory firstly since opkg need to use it.
OPKG_LOCK_DIR=3D"$NATIVE_INSTALL_DIR/$OPKG_LIBDIR/opkg"
if [ ! -d "$OPKG_LOCK_DIR" ]; then
  mkdir -p $OPKG_LOCK_DIR
  echo "Successfully create directory $OPKG_LOCK_DIR."
#JZ Why the following
#JZ else
#JZ  echo "OPKG has run on this machine before, this is update install!"
#JZ  confirm_install
fi

#first update repository
echo "Updating OPKG repository..."
./opkg/bin/opkg-cl -f $OPKG_CONFIG_FILE -o $NATIVE_INSTALL_DIR update
check_result

#install below must sdk-host packages
OPKG_INSTALL_CMD=3D"./opkg/bin/opkg-cl --force-overwrite"
OPKG_INSTALL_NATIVE_CMD=3D"$OPKG_INSTALL_CMD  -f $OPKG_CONFIG_FILE -o $NATI=
VE_INSTALL_DIR install"

$OPKG_INSTALL_NATIVE_CMD pseudo-nativesdk
check_result
$OPKG_INSTALL_NATIVE_CMD opkg-nativesdk
check_result
$OPKG_INSTALL_NATIVE_CMD pkgconfig-nativesdk
check_result

for native_target_type in $YOCTOADT_TARGETS; do
  echo "Installint cross toolchain for $native_target_type"
  if [ "$native_target_type" =3D=3D "x86" ]; then
    echo "Installing X86 crosss tools ..."
    $OPKG_INSTALL_NATIVE_CMD binutils-cross-canadian-i586
    check_result
    $OPKG_INSTALL_NATIVE_CMD gcc-cross-canadian-i586
    check_result
    $OPKG_INSTALL_NATIVE_CMD gdb-cross-canadian-i586
    check_result
  else
    $OPKG_INSTALL_NATIVE_CMD binutils-cross-canadian-$native_target_type
    check_result
    $OPKG_INSTALL_NATIVE_CMD gcc-cross-canadian-$native_target_type
    check_result
    $OPKG_INSTALL_NATIVE_CMD gdb-cross-canadian-$native_target_type
    check_result
  fi
done

if [ "$YOCTOADT_QEMU" =3D=3D "Y" ]; then
  echo "Installing qemu native ..."
  $OPKG_INSTALL_NATIVE_CMD qemu-nativesdk
  check_result
  $OPKG_INSTALL_NATIVE_CMD qemu-helper-nativesdk
  check_result
fi

if [ "$YOCTOADT_NFS_UTIL" =3D=3D "Y" ]; then
  echo "Installing unfs ..."
  $OPKG_INSTALL_NATIVE_CMD unfs-server-nativesdk
  check_result
fi

}


#Please note this might be exported by environment-setup script file

PSEUDO_LOCALSTATEDIR=3D"$POKY_NATIVE_SYSROOT/var/pseudo"
PSEUDO_COMMAND=3D"$POKY_NATIVE_SYSROOT/usr/bin/pseudo"
PSEUDO_OPTS=3D"-P $POKY_NATIVE_SYSROOT/usr"

TAR_OPTS=3D"-xjf"
PSEUDO_OPTS=3D"-P $POKY_NATIVE_SYSROOT/usr"


#Need three input params, $1 -- arch_type(arm powerpc x86 mips) $2 --- root=
fs type (one of sdk sato minimal lsb)
#$3 --- rootfs extraction dir

extract_rootfs()
{
  if [ -d "$PSEUDO_LOCALSTATEDIR" ]; then
    echo "$PSEUDO_LOCALSTATEDIR already exists!"
    confirm_install
    rm -rf $PSEUDO_LOCALSTATEDIR
  fi

  if [ -d "$3" ]; then
    echo "$3 already exists!"
    confirm_install
    rm -rf "$3"
  fi

  mkdir -p "$PSEUDO_LOCALSTATEDIR"
  touch "$PSEUDO_LOCALSTATEDIR/pseudo.pid"

  echo "Extracting rootfs tarball using pseudo..."

  if [ ! -d "$3" ]; then
    echo "Creating directory $3..."
    mkdir -p "$3"
  fi

  echo "$PSEUDO_COMMAND $PSEUDO_OPTS tar -C \"$3\" $TAR_OPTS \"$PWD/$LOCAL_=
DOWNLOAD/poky-image-$2-qemu$1.tar.bz2\""
  $PSEUDO_COMMAND $PSEUDO_OPTS tar -C $3 "$TAR_OPTS" $PWD/$LOCAL_DOWNLOAD/p=
oky-image-$2-qemu$1.tar.bz2
  check_result
  echo "root_fs image successfully extracted to $3"
}


#Need two input params, $1 -- arch_type(arm powerpc x86 mips) $2 rootfs_ima=
ge_type (a list of sdk sato minimal lsb)
get_qemu_image()
{
  if [ ! -f "$LOCAL_DOWNLOAD/bzImage-qemu$1.bin" ]; then
    echo "Downloading selected qemu binary for ARCH_$1 ..."
    wget "$YOCTOADT_ROOTFS_LOC/bzImage-qemu$1.bin" -P $LOCAL_DOWNLOAD
  fi
 =20
  for image_type in $2; do
    if [ ! -f "$LOCAL_DOWNLOAD/poky-image-$2-qemu$1.tar.bz2" ]; then
      echo "Downloading selected rootfs for ARCH_$1, rootfs_$2"
      wget "$YOCTOADT_ROOTFS_LOC/poky-image-$2-qemu$1.tar.bz2" -P $LOCAL_DO=
WNLOAD
    fi
  done

}

install_target()
{

select_target_var=3D"\$YOCTOADT_TARGET_$1"
select_target=3D`eval echo $select_target_var`

if [ "$select_target" =3D=3D "Y" ]; then
  echo "Installing target sysroot for: $1"
  select_rootfs_var=3D"\$YOCTOADT_ROOTFS_$1"
  select_rootfs=3D`eval echo $select_rootfs_var`
  get_qemu_image $1 $select_rootfs

  target_sysroot_var=3D"\$YOCTOADT_TARGET_SYSROOT_$1"
  target_sysroot=3D`eval echo $target_sysroot_var`
  echo "$target_sysroot"
  target_sysroot_image_var=3D"\$YOCTOADT_TARGET_SYSROOT_IMAGE_$1"
  target_sysroot_image=3D`eval echo $target_sysroot_image_var`
  echo "$target_sysroot_image"
  if [[ "$target_sysroot" !=3D "" && "$target_sysroot_image" !=3D "" ]]; th=
en
    extract_rootfs $1 $target_sysroot_image $target_sysroot
  fi
fi

}

#Main body of installer
#firstly we need to install opkg host

install_opkg

#secondly we will start to install native tools
install_native_sdk

#setup target sysroot(s)
for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
  install_target $arch_type
done









------=_NextPart_001_0001_01CB9173.7E5AFD70
Content-Type: application/octet-stream;
	name="yocto_installer"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="yocto_installer"

#!/bin/bash=20
# Yocto SDK Installer
#
# Copyright (C) 2010 Intel Corp.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

clear

source .config

if [ ! -d "$LOCAL_DOWNLOAD" ]; then
# TODO
# all other non-privilege required code will all be moved=20
# out to this place, create the temp folder is one of them.
# The refactory is not finished yet...
##  echo "create new folders $LOCAL_DOWNLOAD for later downloading images!"
  mkdir -p $LOCAL_DOWNLOAD
fi

sudo ./yocto_main

echo "YoctoSDK has been successfully installed!"


------=_NextPart_001_0001_01CB9173.7E5AFD70
Content-Type: application/octet-stream;
	name="yocto_config"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="yocto_config"

#Host Settings
YOCTOADT_TARGETS=3D"x86 arm"
YOCTOADT_QEMU=3D"Y"
YOCTOADT_NFS_UTIL=3D"Y"
YOCTOADT_BITBAKE=3D"Y"
YOCTOADT_METADATA=3D"Y"

#Target Settings
YOCTOADT_TARGET_arm=3D"N"
YOCTOADT_ROOTFS_arm=3D"sato sdk"
YOCTOADT_TARGET_SYSROOT_IMAGE_arm=3D"sato"
YOCTOADT_TARGET_SYSROOT_arm=3D"$HOME/test-yocto/arm"

YOCTOADT_TARGET_x86=3D"Y"
YOCTOADT_ROOTFS_x86=3D"sdk"
YOCTOADT_TARGET_SYSROOT_IMAGE_x86=3D"sdk"
YOCTOADT_TARGET_SYSROOT_x86=3D"$HOME/test-yocto/x86"

YOCTOADT_TARGET_powerpc=3D"N"
YOCTOADT_ROOTFS_powerpc=3D"sdk"
YOCTOADT_TARGET_SYSROOT_IMAGE_powerpc=3D"sato"
YOCTOADT_TARGET_SYSROOT_powerpc=3D"$HOME/test-yocto/mips"

YOCTOADT_TARGET_mips=3D"N"
YOCTOADT_ROOTFS_mips=3D"sdk"
YOCTOADT_TARGET_SYSROOT_IMAGE_mips=3D"sdk"
YOCTOADT_TARGET_SYSROOT_mips=3D"$HOME/test-yocto/mips"






------=_NextPart_001_0001_01CB9173.7E5AFD70
Content-Type: application/octet-stream;
	name="config"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="config"

# General Information, please don't change this section
YOCTOADT_VERION=3D"1.0"
#used for validation check, will be used in the future
YOCTOADT_SUPPORTED_ROOTFS=3D"minimal sato sdk lsb"
YOCTOADT_SUPPORTED_TARGETS=3D"x86 x86_64 arm ppc mips"
YOCTOADT_OPKG_CONF_FILE_32=3D"opkg-sdk-i586.conf"
YOCTOADT_OPKG_CONF_FILE_64=3D"opkg-sdk-x86_64.conf"
#log will be added in the future
YOCTOADT_INSTALL_LOG_FILE=3D"yoctosdk_installer.log"

#Target ROOTFS Download site Configuration
YOCTOADT_ROOTFS_LOC=3D"http://llu-piketon.sh.intel.com/rootfs"

#folders holding qemu/rootfs downloaded images
LOCAL_DOWNLOAD=3D"./download_image"



#following are for testing
export http_proxy=3D""
export https_proxy=3D""
export ftp_proxy=3D""

------=_NextPart_001_0001_01CB9173.7E5AFD70--

------=_NextPart_000_0000_01CB9173.7E564280
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIdiDCCAyAw
ggKJoAMCAQICBDXe9M8wDQYJKoZIhvcNAQEFBQAwTjELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0Vx
dWlmYXgxLTArBgNVBAsTJEVxdWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTAeFw05
ODA4MjIxNjQxNTFaFw0xODA4MjIxNjQxNTFaME4xCzAJBgNVBAYTAlVTMRAwDgYDVQQKEwdFcXVp
ZmF4MS0wKwYDVQQLEyRFcXVpZmF4IFNlY3VyZSBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkwgZ8wDQYJ
KoZIhvcNAQEBBQADgY0AMIGJAoGBAMFdsVhnCGLuoJotHwhtkRRomAoe/toEbxOEYiHD0XzOnwXg
uAHwTjTs4oqVBGSs8WtTXwWzy2eAv0ICjv7dAQns4QAUT/z78AzdQ7pbK+EfgHCZFVeTFvEPl2q3
wmgjHMxNWTCsUR47ryvW7mNFe8XZX1DS41APOojnvxT94Me5AgMBAAGjggEJMIIBBTBwBgNVHR8E
aTBnMGWgY6BhpF8wXTELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0VxdWlmYXgxLTArBgNVBAsTJEVx
dWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTENMAsGA1UEAxMEQ1JMMTAaBgNVHRAE
EzARgQ8yMDE4MDgyMjE2NDE1MVowCwYDVR0PBAQDAgEGMB8GA1UdIwQYMBaAFEjmaPkr0rKV10fY
IyAQTzOYkJ/UMB0GA1UdDgQWBBRI5mj5K9KylddH2CMgEE8zmJCf1DAMBgNVHRMEBTADAQH/MBoG
CSqGSIb2fQdBAAQNMAsbBVYzLjBjAwIGwDANBgkqhkiG9w0BAQUFAAOBgQBYzinq/Pfetc4CuRe1
hdG54+CVzCUxDQCmkm5/tpJjnlCV0Zpv5BHeY4VumO6o/1rI01WyZnFX3sAh6z0qpyNJAQSGQnv8
7n+iFlK1Z2fTQNs7JliyKHc9rhR3Ydb6KmYnoA36p3Nc6nDxlCFlRF/6/O8paKmih3nvee9PrAd3
ODCCAz0wggKmoAMCAQICAwWw/zANBgkqhkiG9w0BAQUFADBOMQswCQYDVQQGEwJVUzEQMA4GA1UE
ChMHRXF1aWZheDEtMCsGA1UECxMkRXF1aWZheCBTZWN1cmUgQ2VydGlmaWNhdGUgQXV0aG9yaXR5
MB4XDTA2MDIxNjE4MDEzMFoXDTE2MDIxOTE4MDEzMFowUjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMScwJQYDVQQDEx5JbnRlbCBFeHRlcm5hbCBCYXNpYyBQb2xpY3kg
Q0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDBpd/XOb9QVqEZ8mQ1042TdOIq3ATD
IsV2xDyt30yLyMR5Wjtus0bn3B+he89BiNO/LP6+rFzEwlD55PlX+HLGIKeNNG97dqyc30FElEUj
ZzTZFq2N4e3kVJ/XAEEgANzV8v9qp7qWwxugPgfc3z9BkYot+CifozexHLb/hEZj+yISCU61kRZv
uSQ0E11yYL4dRgcglJeaHo3oX57rvIckaLsYV5/1Aj+R8DM1Ppk965XQAKsHfnyT7C4S50T4lVn4
lz36wOdNZn/zegG1zp41lnoTFfT4KuKVJH5x7YD1p6KbgJCKLovnujGuohquBNfdXKpZkvz6pGv+
iC1HawJdAgMBAAGjgaAwgZ0wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBQaxgxKxEdvqNutK/D0
Vgaj7TdUDDA6BgNVHR8EMzAxMC+gLaArhilodHRwOi8vY3JsLmdlb3RydXN0LmNvbS9jcmxzL3Nl
Y3VyZWNhLmNybDAfBgNVHSMEGDAWgBRI5mj5K9KylddH2CMgEE8zmJCf1DAPBgNVHRMBAf8EBTAD
AQH/MA0GCSqGSIb3DQEBBQUAA4GBABMQOK2kVKVIlUWwLTdywJ+e2O+PC/uQltK2F3lRyrPfBn69
tOkIP4SgDJOfsxyobIrPLe75kBLw+Dom13OBDp/EMZJZ1CglQfVV8co9mT3aZMjSGGQiMgkJLR3j
Mfr900fXZKj5XeqCJ+JP0mEhJGEdVCY+FFlksJjV86fDrq1QMIIFYzCCBEugAwIBAgIKYSyUiQAA
AAAABTANBgkqhkiG9w0BAQUFADBSMQswCQYDVQQGEwJVUzEaMBgGA1UEChMRSW50ZWwgQ29ycG9y
YXRpb24xJzAlBgNVBAMTHkludGVsIEV4dGVybmFsIEJhc2ljIFBvbGljeSBDQTAeFw0wNjAzMjIy
MjIyNDJaFw0xMjAzMjIyMjMyNDJaMFYxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRlbCBDb3Jw
b3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSAzQTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKvXqH/ah10uJc7YzQUh+XEDNqS6IsXOyqCtizr9
x6F+v6iRAbvddRRJRWixfV78qarSN9WMymJ90M8c9/Dfr1yzFuq95RgCAF3vdve3wKi7kJv6lkMJ
wyyB+uIYcWtljYx2LDqbb9S6Z6He3q8W/aGKvu23I9ksNx+cmZcDNZwGdXVIEHpEMyA4bp0RvYtf
p8BsGAyn6YuK63HugeyYdeFL+4+Wz2tGUqw9OWhob6oV1oDH3zboLhHJiQ2oIj3jAJ3/LrIkzcWP
2R20UIliDAPAAl6MNWJPdsNK5EEeuxEuUSpdFsMj5rBmPHH4U8i8rUmi6GEOcX5rwAw64AzS3gEC
AwEAAaOCAjUwggIxMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAlpgTN7BnOPI0wKA9/3FoER
ghMFMAsGA1UdDwQEAwIBhjAQBgkrBgEEAYI3FQEEAwIBADAZBgkrBgEEAYI3FAIEDB4KAFMAdQBi
AEMAQTAfBgNVHSMEGDAWgBQaxgxKxEdvqNutK/D0Vgaj7TdUDDCBvQYDVR0fBIG1MIGyMIGvoIGs
oIGphk5odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFs
JTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcmyGV2h0dHA6Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29t
L3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMFBvbGljeSUyMENBLmNy
bDCB4wYIKwYBBQUHAQEEgdYwgdMwYwYIKwYBBQUHMAKGV2h0dHA6Ly93d3cuaW50ZWwuY29tL3Jl
cG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMFBvbGljeSUy
MENBLmNydDBsBggrBgEFBQcwAoZgaHR0cDovL2NlcnRpZmljYXRlcy5pbnRlbC5jb20vcmVwb3Np
dG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwUG9saWN5JTIwQ0Eu
Y3J0MA0GCSqGSIb3DQEBBQUAA4IBAQCuNCnecJ+vDpXzsHOzMEyz4KgTNDbJROHag8H/ZVga7soc
oJyC+HKqDfQgxifVorbTbSajCBEAxqg6bbNWBJ6qKOFHneBrXkENf5WdD50eCTCFWRV3EIsHEOQ1
kP0eNYV5Ed4hp9y6wASV6z2z86O4+qouLJiow4AIhoCKD8rEyD7ODgTvjvLCKpsVyPlG1jOVSsOS
IF2VUmueAmK3RFU4np83zerK/j0G37owhniEDT6ZhwkUd0XL45nt1m7yApMEbnXUTHNaXnE+P98k
k3nDXdW25sB+5xWcYR3GpgMdQiZgP/f0KZ+yZKNE7gcp3I/O4pXqUNWIsLSYTi3soAR2MIIFYzCC
BEugAwIBAgIKYSyl/gAAAAAABjANBgkqhkiG9w0BAQUFADBSMQswCQYDVQQGEwJVUzEaMBgGA1UE
ChMRSW50ZWwgQ29ycG9yYXRpb24xJzAlBgNVBAMTHkludGVsIEV4dGVybmFsIEJhc2ljIFBvbGlj
eSBDQTAeFw0wNjAzMjIyMjIyNDdaFw0xMjAzMjIyMjMyNDdaMFYxCzAJBgNVBAYTAlVTMRowGAYD
VQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNz
dWluZyBDQSAzQjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMDoHJYUGvcdR4k0Qv8/
RrwNX4+vEe5PN2LnGn4xfIWwdUbk5+zvrRy1HjoKdG/AShZfxAuFoVyNIah5GJLpiS/vGbsDYKK+
EZcIcmtPfvbB9Yg09EnQ0OpsZ2ORRd5lYUfMUU+zkpgL96vKFdkiG+eeHEwnSS3VikGVrF7UDdKf
vxZwRwQCx6rEHAFPCjBDVfGYZuYT1EDhSDvzEiU7KzBsxrdBCFU4RYL7kh+do+vyMDlBzpw3WKvM
Vbf3s5lxYiY7AjEhU8OSyZEQlgtK8PNyifHjmyrSaeJrPshM3PuLFG4d3gm1UJEiGNzxcHGb6YLP
29IQAwY5mAk8j+UOVcsCAwEAAaOCAjUwggIxMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFG/D
cREooZ0ZV/VnV8/ZKSaI1aWiMAsGA1UdDwQEAwIBhjAQBgkrBgEEAYI3FQEEAwIBADAZBgkrBgEE
AYI3FAIEDB4KAFMAdQBiAEMAQTAfBgNVHSMEGDAWgBQaxgxKxEdvqNutK/D0Vgaj7TdUDDCBvQYD
VR0fBIG1MIGyMIGvoIGsoIGphk5odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9J
bnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcmyGV2h0dHA6Ly9jZXJ0aWZp
Y2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUy
MFBvbGljeSUyMENBLmNybDCB4wYIKwYBBQUHAQEEgdYwgdMwYwYIKwYBBQUHMAKGV2h0dHA6Ly93
d3cuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBC
YXNpYyUyMFBvbGljeSUyMENBLmNydDBsBggrBgEFBQcwAoZgaHR0cDovL2NlcnRpZmljYXRlcy5p
bnRlbC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2lj
JTIwUG9saWN5JTIwQ0EuY3J0MA0GCSqGSIb3DQEBBQUAA4IBAQBAiWWHL6T21QXFZDyaUIye0jh7
f40GXqi75Ro5JbpROtlZBqyRq6oPMAG6Igxd5Bd9TMtNkOvguknFnK1y17UdMhLOl+FuInE+FAWk
803aRW27OsX+ot0KmPioKnZ3L1K5qcQS3tp6or7AaZzd0w0qFitm4UfP9nnTXQtY9XM5QJ07IKFD
E3tlOlamKhjbiJV3FKigCVesPZSx9h2G7Ve4irEfz915Vks26AJHGZagEHNxM9exkgem4ENsG+t0
vYqn9x7YsqJ6fmbOSyrzjzb3CYeEfyE5SL+f3Vx9uMsQDyb8LVCDBXQtxLEHnFEBPrRSSF9kPmyj
avx4UqFdPEyCMIIGAzCCBOugAwIBAgIKGmwusAAAAAApdjANBgkqhkiG9w0BAQUFADBWMQswCQYD
VQQGEwJVUzEaMBgGA1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVy
bmFsIEJhc2ljIElzc3VpbmcgQ0EgM0IwHhcNMDgwNDE0MjMxNDQ4WhcNMTEwNDE0MjMxNDQ4WjBB
MRcwFQYDVQQDEw5aaGFuZywgSmVzc2ljYTEmMCQGCSqGSIb3DQEJARYXamVzc2ljYS56aGFuZ0Bp
bnRlbC5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDQbirxoX/8OWYyzy4UnZ7N
xXoADLZqxxH1q4lMF2zuAHjyDnNj/4ReRzB6AIDEg1BQWS4z5jC6oApos3HvFEsGbS3pYCWSo5Vb
jtY5HWOBRPJ2rQ8wzITqcEEBWooYCj5LJeAjPuOZoZPVrKPI1khbOYzaJUwQpICfaErHZyM4p2mV
AYXcUa/N0zKGnZmNaO6Dff96g41C9jEyfOFEtYOpLdQoXhD1i8tW17WxbHMuiXx3PR3GUdBADrRf
I3wzqn4rh0y0D4l9mBfgTybVN3UR35ZFGSRsuldyJeeKcCSgghJi3K4ZTxzMfQ6+OKBu6SBeNKWk
e2Q4f8CIf0+8ZpwfAgMBAAGjggLmMIIC4jALBgNVHQ8EBAMCB4AwHQYDVR0OBBYEFPIpOYEzCqH+
037yR8d0Rarz7r7mMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OC
kcAJZ4HevTmV8EMCAWQCAQYwHwYDVR0jBBgwFoAUb8NxESihnRlX9WdXz9kpJojVpaIwgckGA1Ud
HwSBwTCBvjCBu6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50
ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwM0IuY3Jshl1odHRwOi8vY2Vy
dGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFz
aWMlMjBJc3N1aW5nJTIwQ0ElMjAzQi5jcmwwge8GCCsGAQUFBwEBBIHiMIHfMGkGCCsGAQUFBzAC
hl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4
dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQi5jcnQwcgYIKwYBBQUHMAKGZmh0dHA6
Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIw
RXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNCLmNydDAfBgNVHSUEGDAWBggrBgEF
BQcDBAYKKwYBBAGCNwoDDDApBgkrBgEEAYI3FQoEHDAaMAoGCCsGAQUFBwMEMAwGCisGAQQBgjcK
AwwwSwYDVR0RBEQwQqAnBgorBgEEAYI3FAIDoBkMF2plc3NpY2EuemhhbmdAaW50ZWwuY29tgRdq
ZXNzaWNhLnpoYW5nQGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEANFSBbauSm1ktwUQI6fGq
9XhTSUsty5/CHOrOwFe4K7LX0clVirXUYakIZXXG86lD1piRrjt23MhKRekYNIv0mfJklEF7yV5M
VVqwDK1Uz6bsiw/SQnqfBuFrd70W4cua3bU1uu3dAhZBh482BtBZYFockuHd3YBFT7xmykOaAMLP
CttrNSijP7HsbetGG2GLLc3CWauSXXr2ELseXkw3KkUKBPMw+DFAJdsRyBe0L+OwlDplr8POBXXb
uuQK7Wo84mX7gMT0uSq/Luex/BD1xn2brKVs9t4FvL8ifxv4LuWRzv45EgPN4T12I202GBQ8iJtZ
DkT3+9QPiQ35Hmuy6zCCBkowggUyoAMCAQICCnmKHVEAAAAAHyswDQYJKoZIhvcNAQEFBQAwVjEL
MAkGA1UEBhMCVVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBF
eHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDNBMB4XDTA4MDQxNDIzMTM1MVoXDTExMDQxNDIzMTM1
MVowQTEXMBUGA1UEAxMOWmhhbmcsIEplc3NpY2ExJjAkBgkqhkiG9w0BCQEWF2plc3NpY2Euemhh
bmdAaW50ZWwuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2Lgwg9E/0F9weWx5
ZCk0oiuerOIqOFTXcithjh7zRhiq8v/z9sXR/yWXUA7JK5E5JLPRNl0nQJFv/FLTaq9/9PchiI/N
4v7L/ERXTzdMNvwOEqNOy8SOmmOOjF8N1vtrIv+WdBYiqBvtfQ9xGXadxckgrBOSTtTrw4iShbnG
mVrw6mYYIOdPIKhq3QFmxHs93R8IrmIjvMbf31JhiAp7KJ/mc+bckmYW/9fNNEQkMbuF3B6iWsTk
8c+D8oWmxuw+m6svwEMKck8yr3ldF6sZ6NCKXJChwDmjZMHBBSV6IUUycyl6SJ33j3r9Beki5bvG
mhZnfGBLWODaLv4PDbG7BwIDAQABo4IDLTCCAykwCwYDVR0PBAQDAgQwMEQGCSqGSIb3DQEJDwQ3
MDUwDgYIKoZIhvcNAwICAgCAMA4GCCqGSIb3DQMEAgIAgDAHBgUrDgMCBzAKBggqhkiG9w0DBzAd
BgNVHQ4EFgQUKEdHKlCw71rRzz5gJWoRJwoviW0wPQYJKwYBBAGCNxUHBDAwLgYmKwYBBAGCNxUI
hsOMdYSZ5VGD/YEohY6fU4KRwAlnhLnZQYeE/04CAWQCAQkwHwYDVR0jBBgwFoAUCWmBM3sGc48j
TAoD3/cWgRGCEwUwgckGA1UdHwSBwTCBvjCBu6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20v
cmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIw
M0EuY3Jshl1odHRwOi8vY2VydGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRl
bCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQS5jcmwwge8GCCsGAQUFBwEB
BIHiMIHfMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRp
ZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQS5jcnQw
cgYIKwYBBQUHMAKGZmh0dHA6Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2Vy
dGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNBLmNy
dDAfBgNVHSUEGDAWBggrBgEFBQcDBAYKKwYBBAGCNwoDBDApBgkrBgEEAYI3FQoEHDAaMAoGCCsG
AQUFBwMEMAwGCisGAQQBgjcKAwQwSwYDVR0RBEQwQqAnBgorBgEEAYI3FAIDoBkMF2plc3NpY2Eu
emhhbmdAaW50ZWwuY29tgRdqZXNzaWNhLnpoYW5nQGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOC
AQEAlkSHAnj2YSCjtyOIJJtoNia1mv4qLpp3rxqxeZzEG9Bk4k4hGHkozj1p+mi368ieYl/fTPtK
IIBDCwod9o12adTGGW7wyUHjZfalumhsFoKTXbUU/CC7lpooUKuDxCjaIjsc4rdDxP1MEAUX43IG
kLRqq9elDWluC0WjR+q+cAqKMJxLmAKhKz7JDTNrbfWwuoETGdCMkLUK464/FSvfDKoV+Ypkoq1x
YiTi71VhwWenYKPnyKbLgiULEgdfwQscMzJQ9rmq1iyfoXuXPSkCA6nfZKoSkBOVJQXjW/+B2wxe
YmaO9Qc5P3CJvsmgmgX5mK2wyKEw0JCwTHE3w7FkFjGCA0EwggM9AgEBMGQwVjELMAkGA1UEBhMC
VVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBC
YXNpYyBJc3N1aW5nIENBIDNCAgoabC6wAAAAACl2MAkGBSsOAwIaBQCgggGyMBgGCSqGSIb3DQEJ
AzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEwMTIwMjAwMTkxM1owIwYJKoZIhvcNAQkE
MRYEFHBF8lxlz2qy6WKVI9d+vmpT4C9fMGcGCSqGSIb3DQEJDzFaMFgwCgYIKoZIhvcNAwcwDgYI
KoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMAcGBSsO
AwIaMAoGCCqGSIb3DQIFMHMGCSsGAQQBgjcQBDFmMGQwVjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5n
IENBIDNBAgp5ih1RAAAAAB8rMHUGCyqGSIb3DQEJEAILMWagZDBWMQswCQYDVQQGEwJVUzEaMBgG
A1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElz
c3VpbmcgQ0EgM0ECCnmKHVEAAAAAHyswDQYJKoZIhvcNAQEBBQAEggEAm5To16FIkJNAmtti03dE
UoEATpZJaI09gHFwX0PZMYi/Pk+XUIaEvLvwZgVRWN4wVmJCDA2uOxTWbdENhP7TFNfvjKcPB+2L
ItghQlDmVwBQ0akGTdGDrgqbgJcDdJzYb5k/4UnLF8daUvDjNgEPkt83qQBXV0Y2PBd7i6txh5c6
SLwahEEKhCoNQEWjCI6x1pqvP5tpEv2ibDPvtvUueCpCBPGZmNvuHQi7IF5aRkEVbJmNfq4U8WF6
1m/GeNCxVpRofA27sK3cFkaA4iXtIl+PeyP6aRhgVU2W2Y9Y7mi9yURAxsSWlsnU7F99M/PQ53po
LdXsDQ2CEgVwhD2QcgAAAAAAAA==

------=_NextPart_000_0000_01CB9173.7E564280--
