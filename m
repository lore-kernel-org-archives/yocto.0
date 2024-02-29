Return-Path: <vivekojha13@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4878C54798
	for <webhook@archiver.kernel.org>; Thu, 29 Feb 2024 11:38:22 +0000 (UTC)
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
 by mx.groups.io with SMTP id smtpd.web11.22266.1709206695122114996
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Feb 2024 03:38:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RM9enuq+;
 spf=pass (domain: gmail.com, ip: 209.85.161.44, mailfrom: vivekojha13@gmail.com)
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5a03f90d1c1so297582eaf.1
        for <yocto@lists.yoctoproject.org>; Thu, 29 Feb 2024 03:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709206694; x=1709811494; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mDPhNBJAE5+nwxMbD4ZyZg5zNk4NfMyplwZakpYH40M=;
        b=RM9enuq+J67kW5oCp59dE5kbSs3tggncytHNxaeFuoKZFHLFFBVUBL3nWZMKGLVmA1
         zRkPGJpm+gRGvW/wXXViYy+Hnyzx9V39OAhxzGPQ3FjHcPO0Zp0yIFDUVmA6hkYsBALG
         /by/IccA6TiFkoMHjeTeA9tXuQTf6sAvobw9TzSDx1c0GFtNxo5cpHUMf7lAJZcIjUnv
         6NiK16C5sGtfT+jDXR1H00uCXp/DEYIONsD8E2CFYaMEZ9erBjtBoJT4k9BnHSt+Fr5f
         bVyDeuQomuP8ae15PgjZYYi0CDHxpKIGwcPBWa17YNU+nGE6DdzLx96xcur6/WJit1gb
         NqRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709206694; x=1709811494;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mDPhNBJAE5+nwxMbD4ZyZg5zNk4NfMyplwZakpYH40M=;
        b=wsKGCooe+LUuGK8jaNsZ7577CXYYXjCO0P+Q4aVZMa88OS/uiCFsJ5na0sW2tEPvyX
         FdNG4+wwcQA9a2nXGTIdpQQSNKim+9BjY4Ke8Z+J5L9mqYneapBZuhkwM4KBWwMycQOB
         i9PuSlHw3LNguakZFSvn1gLnuuwhECb0tpj4WndwudZM4ARb5+IqNtoRitz1D8vWrMP/
         VHkvhhLB77W9U3fDcrlqvfRV5BpbYtBkJIiz0KnX6r2mAT6Uf/C0JxQ/WoBoMWHQQtEB
         Frbbz4omj+gtxaPlRJzPKusiZxP7tJLjWTKGPNDI5JB0Wv0mJbjUsFKb8omYxNTYo3N0
         C3uQ==
X-Gm-Message-State: AOJu0Yx7h2fGcsEimQ83BiXATIG003xn+KhbrhkwGHKYjLzGC1FAlLEO
	HLovNTHDWluN4KlalfmA6W+ijbVpRxViuoAXPPqSD1O6uJXsHQc/yQGT6JMDooOx63CFwVdIPHt
	paJJTSV5fklzCYPKxrGoBYHeLgoZnxZ2A5Eg=
X-Google-Smtp-Source: AGHT+IHxTX4U3zvtnYJcHyLJIqHp3iJdxLM5RSR7Z5uG3d35WqX0szRlXnaGnW61JBC19tBoe1YpWjZnPHw1zRviSY4=
X-Received: by 2002:a05:6820:604:b0:5a0:e6bf:7b00 with SMTP id
 e4-20020a056820060400b005a0e6bf7b00mr1901982oow.7.1709206693640; Thu, 29 Feb
 2024 03:38:13 -0800 (PST)
MIME-Version: 1.0
From: Vivek Ojha <vivekojha13@gmail.com>
Date: Thu, 29 Feb 2024 17:07:37 +0530
Message-ID: <CAPNEe0jspOa2UmUO9pJRzo+mqWJfiQkGF3f6pvqFB5E7Mc+Tgw@mail.gmail.com>
Subject: menuconfig fail for virtual/kernel while building image for meta-intel(intel-corei7-64)
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d27d28061283b103"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Feb 2024 11:38:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62648

--000000000000d27d28061283b103
Content-Type: text/plain; charset="UTF-8"

Hi
While using " bitbake -c menuconfig virtual/kernel", the menuconfig
interface closes instantly.
While using "bitbake -c menuconfig busybox", the menuconfig opens perfectly
and I can make changes  into the busybox config.

Please help me to figure out the issue of not opening the menuconfig
interface for kernel configuration.

Thanks in advance,

Kind regards

Vivek Ojha

BBLAYERS.conf:
# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION = "2"

BBPATH = "${TOPDIR}"
BBFILES ?= ""

BBLAYERS ?= " \
  /home/ti/vivek/source/poky/meta \
  /home/ti/vivek/source/poky/meta-poky \
  /home/ti/vivek/source/poky/meta-yocto-bsp \
  /home/ti/vivek/source/meta-intel \
  /home/ti/vivek/source/meta-openembedded/meta-oe \
  /home/ti/vivek/source/meta-openembedded/meta-networking \
  /home/ti/vivek/source/meta-openembedded/meta-filesystems \
  "


LOCAL.conf:
#
# This file is your local configuration file and is where all local user
settings
# are placed. The comments in this file give some guide to the options a
new user
# to the system might want to change but pretty much any configuration
option can
# be set in this file. More adventurous users can look at
# local.conf.sample.extended which contains other examples of configuration
which
# can be placed in this file but new users likely won't need any of them
# initially. There's also site.conf.sample which contains examples of site
specific
# information such as proxy server addresses.
#
# Lines starting with the '#' character are commented out and in some cases
the
# default values are provided as comments to show people example syntax.
Enabling
# the option is a question of removing the # character and making any
change to the
# variable as required.

#
# Machine Selection
#
# You need to select a specific machine to target the build with. There are
a selection
# of emulated machines available which can boot and run in the QEMU
emulator:
#
#MACHINE ?= "qemuarm"
#MACHINE ?= "qemuarm64"
#MACHINE ?= "qemumips"
#MACHINE ?= "qemumips64"
#MACHINE ?= "qemuppc"
#MACHINE ?= "qemux86"
#MACHINE ?= "qemux86-64"
#
# There are also the following hardware board target machines included for
# demonstration purposes:
#
#MACHINE ?= "beaglebone-yocto"
#MACHINE ?= "genericx86"
#MACHINE ?= "genericx86-64"
#
# This sets the default machine to be qemux86-64 if no other machine is
selected:
#MACHINE ??= "qemux86-64"
MACHINE = "intel-corei7-64"

# These are some of the more commonly used values. Looking at the files in
the
# meta/conf/machine directory, or the conf/machine directory of any
additional layers
# you add in will show all the available machines.

#
# Where to place downloads
#
# During a first build the system will download many different source code
tarballs
# from various upstream projects. This can take a while, particularly if
your network
# connection is slow. These are all stored in DL_DIR. When wiping and
rebuilding you
# can preserve this directory to speed up this part of subsequent builds.
This directory
# is safe to share between multiple builds on the same machine too.
#
# The default is a downloads directory under TOPDIR which is the build
directory.
#
#DL_DIR ?= "${TOPDIR}/downloads"

#
# Where to place shared-state files
#
# BitBake has the capability to accelerate builds based on previously built
output.
# This is done using "shared state" files which can be thought of as cache
objects
# and this option determines where those files are placed.
#
# You can wipe out TMPDIR leaving this directory intact and the build would
regenerate
# from these files if no changes were made to the configuration. If changes
were made
# to the configuration, only shared state files where the state was still
valid would
# be used (done using checksums).
#
# The default is a sstate-cache directory under TOPDIR.
#
#SSTATE_DIR ?= "${TOPDIR}/sstate-cache"

#
# Where to place the build output
#
# This option specifies where the bulk of the building work should be done
and
# where BitBake should place its temporary files and output. Keep in mind
that
# this includes the extraction and compilation of many applications and the
toolchain
# which can use Gigabytes of hard disk space.
#
# The default is a tmp directory under TOPDIR.
#
#TMPDIR = "${TOPDIR}/tmp"

#
# Default policy config
#
# The distribution setting controls which policy settings are used as
defaults.
# The default value is fine for general Yocto project use, at least
initially.
# Ultimately when creating custom policy, people will likely end up
subclassing
# these defaults.
#
DISTRO ?= "poky"
# As an example of a subclass there is a "bleeding" edge policy
configuration
# where many versions are set to the absolute latest code from the upstream
# source control systems. This is just mentioned here as an example, its not
# useful to most new users.
# DISTRO ?= "poky-bleeding"

#
# Package Management configuration
#
# This variable lists which packaging formats to enable. Multiple package
backends
# can be enabled at once and the first item listed in the variable will be
used
# to generate the root filesystems.
# Options are:
#  - 'package_deb' for debian style deb files
#  - 'package_ipk' for ipk files are used by opkg (a debian style embedded
package manager)
#  - 'package_rpm' for rpm style packages
# E.g.: PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk"
# OE-Core defaults to ipkg, whilst Poky defaults to rpm:
# PACKAGE_CLASSES ?= "package_rpm"

#
# SDK target architecture
#
# This variable specifies the architecture to build SDK items for and means
# you can build the SDK packages for architectures other than the machine
you are
# running the build on (i.e. building i686 packages on an x86_64 host).
# Supported values are i686, x86_64, aarch64
#SDKMACHINE ?= "i686"

#
# Extra image configuration defaults
#
# The EXTRA_IMAGE_FEATURES variable allows extra packages to be added to
the generated
# images. Some of these options are added to certain image types
automatically. The
# variable can contain the following options:
#  "dbg-pkgs"       - add -dbg packages for all installed packages
#                     (adds symbol information for debugging/profiling)
#  "src-pkgs"       - add -src packages for all installed packages
#                     (adds source code for debugging)
#  "dev-pkgs"       - add -dev packages for all installed packages
#                     (useful if you want to develop against libs in the
image)
#  "ptest-pkgs"     - add -ptest packages for all ptest-enabled packages
#                     (useful if you want to run the package test suites)
#  "tools-sdk"      - add development tools (gcc, make, pkgconfig etc.)
#  "tools-debug"    - add debugging tools (gdb, strace)
#  "eclipse-debug"  - add Eclipse remote debugging support
#  "tools-profile"  - add profiling tools (oprofile, lttng, valgrind)
#  "tools-testapps" - add useful testing tools (ts_print, aplay, arecord
etc.)
#  "debug-tweaks"   - make an image suitable for development
#                     e.g. ssh root access has a blank password
# There are other application targets that can be used here too, see
# meta/classes-recipe/image.bbclass and
# meta/classes-recipe/core-image.bbclass for more details.
# We default to enabling the debugging tweaks.
EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
#
# Additional image features
#
# The following is a list of additional classes to use when building images
which
# enable extra features. Some available options which can be included in
this variable
# are:
#   - 'buildstats' collect build statistics
USER_CLASSES ?= "buildstats"

#
# Runtime testing of images
#
# The build system can test booting virtual machine images under qemu (an
emulator)
# after any root filesystems are created and run tests against those
images. It can also
# run tests against any SDK that are built. To enable this uncomment these
lines.
# See meta/classes-recipe/test{image,sdk}.bbclass for further details.
#IMAGE_CLASSES += "testimage testsdk"
#TESTIMAGE_AUTO:qemuall = "1"

#
# Interactive shell configuration
#
# Under certain circumstances the system may need input from you and to do
this it
# can launch an interactive shell. It needs to do this since the build is
# multithreaded and needs to be able to handle the case where more than one
parallel
# process may require the user's attention. The default is iterate over the
available
# terminal types to find one that works.
#
# Examples of the occasions this may happen are when resolving patches
which cannot
# be applied, to use the devshell or the kernel menuconfig
#
# Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE 3.x
only), none
# Note: currently, Konsole support only works for KDE 3.x due to the way
# newer Konsole versions behave
#OE_TERMINAL = "auto"
# By default disable interactive patch resolution (tasks will just fail
instead):
PATCHRESOLVE = "noop"

#
# Disk Space Monitoring during the build
#
# Monitor the disk space during the build. If there is less that 1GB of
space or less
# than 100K inodes in any key build location (TMPDIR, DL_DIR, SSTATE_DIR),
gracefully
# shutdown the build. If there is less than 100MB or 1K inodes, perform a
hard halt
# of the build. The reason for this is that running completely out of space
can corrupt
# files and damages the build in ways which may not be easily recoverable.
# It's necessary to monitor /tmp, if there is no space left the build will
fail
# with very exotic errors.
BB_DISKMON_DIRS ??= "\
    STOPTASKS,${TMPDIR},1G,100K \
    STOPTASKS,${DL_DIR},1G,100K \
    STOPTASKS,${SSTATE_DIR},1G,100K \
    STOPTASKS,/tmp,100M,100K \
    HALT,${TMPDIR},100M,1K \
    HALT,${DL_DIR},100M,1K \
    HALT,${SSTATE_DIR},100M,1K \
    HALT,/tmp,10M,1K"

#
# Shared-state files from other locations
#
# As mentioned above, shared state files are prebuilt cache data objects
which can be
# used to accelerate build time. This variable can be used to configure the
system
# to search other mirror locations for these objects before it builds the
data itself.
#
# This can be a filesystem directory, or a remote url such as https or ftp.
These
# would contain the sstate-cache results from previous builds (possibly
from other
# machines). This variable works like fetcher MIRRORS/PREMIRRORS and points
to the
# cache locations to check for the shared objects.
# NOTE: if the mirror uses the same structure as SSTATE_DIR, you need to
add PATH
# at the end as shown in the examples below. This will be substituted with
the
# correct path within the directory structure.
#SSTATE_MIRRORS ?= "\
#file://.* https://someserver.tld/share/sstate/PATH;downloadfilename=PATH \
#file://.* file:///some/local/dir/sstate/PATH"

#
# Yocto Project SState Mirror
#
# The Yocto Project has prebuilt artefacts available for its releases, you
can enable
# use of these by uncommenting some of the following lines. This will mean
the build uses
# the network to check for artefacts at the start of builds, which does
slow it down
# initially but it will then speed up the builds by not having to build
things if they are
# present in the cache. It assumes you can download something faster than
you can build it
# which will depend on your network.
# Note: For this to work you also need hash-equivalence passthrough to the
matching server
# There is a choice between our sstate server directly and a faster content
delivery network
# (CDN) kindly provided by JSDelivr, uncomment one of the SSTATE_MIRRORS
lines, not both.
# Using the CDN rather than the yoctoproject.org address is
suggested/preferred.
#
#BB_HASHSERVE_UPSTREAM = "hashserv.yocto.io:8687"
#SSTATE_MIRRORS ?= "file://.*
http://cdn.jsdelivr.net/yocto/sstate/all/PATH;downloadfilename=PATH"
#
###SSTATE_MIRRORS ?= "file://.*
http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
#
# Qemu configuration
#
# By default native qemu will build with a builtin VNC server where
graphical output can be
# seen. The line below enables the SDL UI frontend too.
PACKAGECONFIG:append:pn-qemu-system-native = " sdl"
# By default libsdl2-native will be built, if you want to use your host's
libSDL instead of
# the minimal libsdl built by libsdl2-native then uncomment the
ASSUME_PROVIDED line below.
#ASSUME_PROVIDED += "libsdl2-native"

# You can also enable the Gtk UI frontend, which takes somewhat longer to
build, but adds
# a handy set of menus for controlling the emulator.
#PACKAGECONFIG:append:pn-qemu-system-native = " gtk+"

#
# Hash Equivalence
#
# Enable support for automatically running a local hash equivalence server
and
# instruct bitbake to use a hash equivalence aware signature generator. Hash
# equivalence improves reuse of sstate by detecting when a given sstate
# artifact can be reused as equivalent, even if the current task hash
doesn't
# match the one that generated the artifact.
#
# A shared hash equivalent server can be set with "<HOSTNAME>:<PORT>" format
#
#BB_HASHSERVE = "auto"
#BB_SIGNATURE_HANDLER = "OEEquivHash"

#
# Memory Resident Bitbake
#
# Bitbake's server component can stay in memory after the UI for the
current command
# has completed. This means subsequent commands can run faster since there
is no need
# for bitbake to reload cache files and so on. Number is in seconds, after
which the
# server will shut down.
#
#BB_SERVER_TIMEOUT = "60"

# CONF_VERSION is increased each time build/conf/ changes incompatibly and
is used to
# track the version of this file when it was generated. This can safely be
ignored if
# this doesn't mean anything to you.
CONF_VERSION = "2"
LICENSE_FLAGS_ACCEPTED = "commercial"
#PREFERRED_PROVIDER_virtual/kernel ?= "linux-intel"
#PREFERRED_VERSION_linux-intel = "5.15.137"
IMAGE_INSTALL:append = " pciutils"
IMAGE_INSTALL:append = " i2c-tools"
IMAGE_INSTALL:append = " usbutils"
IMAGE_INSTALL:append = " openssh"
IMAGE_INSTALL:append = " sudo"
MACHINE_FEATURES = " pci"
#Package for filesystem identification
IMAGE_INSTALL:append = " util-linux"
#Package For mountingext2, ext3, or ext4 filesystems
IMAGE_INSTALL:append = " e2fsprogs"
#Package For mounting NTFS filesystems
IMAGE_INSTALL:append = " ntfs-3g"
#Package For mounting FAT filesystems
IMAGE_INSTALL:append = " dosfstools"
# provides detailed information about the network interface card (Ethernet
Card)
IMAGE_INSTALL:append = " ethtool"
#OE_TERMINAL = "screen"
#IMAGE_FSTYPES += " hddimg"
#IMAGE_FSTYPES += " wic.xz"
#IMAGE_ROOTFS_EXTRA_SPACE = "0"
#IMAGE_NAME_SUFFIX = ""
#IMAGE_INSTALL_append =+ "gstreamer1.0-plugins-good
gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav
gstreamer1.0-vaapi"

--000000000000d27d28061283b103
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi</div><div>While using &quot; bitbake -c menuconfig=
 virtual/kernel&quot;, the menuconfig interface closes instantly.</div><div=
>While using &quot;bitbake -c menuconfig busybox&quot;, the menuconfig open=
s perfectly and I can make changes=C2=A0 into the busybox config.</div><div=
><br></div><div>Please help me to figure out the issue of not opening the m=
enuconfig interface for kernel configuration. <br></div><div><br></div><div=
>Thanks in advance,</div><div><br></div><div>Kind regards</div><div><br></d=
iv><div>Vivek Ojha</div><div><br></div><div>BBLAYERS.conf:</div><div># POKY=
_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.conf<br>#=
 changes incompatibly<br>POKY_BBLAYERS_CONF_VERSION =3D &quot;2&quot;<br><b=
r>BBPATH =3D &quot;${TOPDIR}&quot;<br>BBFILES ?=3D &quot;&quot;<br><br>BBLA=
YERS ?=3D &quot; \<br>=C2=A0 /home/ti/vivek/source/poky/meta \<br>=C2=A0 /h=
ome/ti/vivek/source/poky/meta-poky \<br>=C2=A0 /home/ti/vivek/source/poky/m=
eta-yocto-bsp \<br>=C2=A0 /home/ti/vivek/source/meta-intel \<br>=C2=A0 /hom=
e/ti/vivek/source/meta-openembedded/meta-oe \<br>=C2=A0 /home/ti/vivek/sour=
ce/meta-openembedded/meta-networking \<br>=C2=A0 /home/ti/vivek/source/meta=
-openembedded/meta-filesystems \<br>=C2=A0 &quot;</div><div><br></div><div>=
<br></div><div>LOCAL.conf:</div><div>#<br># This file is your local configu=
ration file and is where all local user settings<br># are placed. The comme=
nts in this file give some guide to the options a new user<br># to the syst=
em might want to change but pretty much any configuration option can<br># b=
e set in this file. More adventurous users can look at<br># local.conf.samp=
le.extended which contains other examples of configuration which<br># can b=
e placed in this file but new users likely won&#39;t need any of them<br># =
initially. There&#39;s also site.conf.sample which contains examples of sit=
e specific<br># information such as proxy server addresses.<br>#<br># Lines=
 starting with the &#39;#&#39; character are commented out and in some case=
s the<br># default values are provided as comments to show people example s=
yntax. Enabling<br># the option is a question of removing the # character a=
nd making any change to the<br># variable as required.<br><br>#<br># Machin=
e Selection<br>#<br># You need to select a specific machine to target the b=
uild with. There are a selection<br># of emulated machines available which =
can boot and run in the QEMU emulator:<br>#<br>#MACHINE ?=3D &quot;qemuarm&=
quot;<br>#MACHINE ?=3D &quot;qemuarm64&quot;<br>#MACHINE ?=3D &quot;qemumip=
s&quot;<br>#MACHINE ?=3D &quot;qemumips64&quot;<br>#MACHINE ?=3D &quot;qemu=
ppc&quot;<br>#MACHINE ?=3D &quot;qemux86&quot;<br>#MACHINE ?=3D &quot;qemux=
86-64&quot;<br>#<br># There are also the following hardware board target ma=
chines included for <br># demonstration purposes:<br>#<br>#MACHINE ?=3D &qu=
ot;beaglebone-yocto&quot;<br>#MACHINE ?=3D &quot;genericx86&quot;<br>#MACHI=
NE ?=3D &quot;genericx86-64&quot;<br>#<br># This sets the default machine t=
o be qemux86-64 if no other machine is selected:<br>#MACHINE ??=3D &quot;qe=
mux86-64&quot;<br>MACHINE =3D &quot;intel-corei7-64&quot;<br><br># These ar=
e some of the more commonly used values. Looking at the files in the<br># m=
eta/conf/machine directory, or the conf/machine directory of any additional=
 layers<br># you add in will show all the available machines.<br><br>#<br>#=
 Where to place downloads<br>#<br># During a first build the system will do=
wnload many different source code tarballs<br># from various upstream proje=
cts. This can take a while, particularly if your network<br># connection is=
 slow. These are all stored in DL_DIR. When wiping and rebuilding you<br># =
can preserve this directory to speed up this part of subsequent builds. Thi=
s directory<br># is safe to share between multiple builds on the same machi=
ne too.<br>#<br># The default is a downloads directory under TOPDIR which i=
s the build directory.<br>#<br>#DL_DIR ?=3D &quot;${TOPDIR}/downloads&quot;=
<br><br>#<br># Where to place shared-state files<br>#<br># BitBake has the =
capability to accelerate builds based on previously built output.<br># This=
 is done using &quot;shared state&quot; files which can be thought of as ca=
che objects<br># and this option determines where those files are placed.<b=
r>#<br># You can wipe out TMPDIR leaving this directory intact and the buil=
d would regenerate<br># from these files if no changes were made to the con=
figuration. If changes were made<br># to the configuration, only shared sta=
te files where the state was still valid would<br># be used (done using che=
cksums).<br>#<br># The default is a sstate-cache directory under TOPDIR.<br=
>#<br>#SSTATE_DIR ?=3D &quot;${TOPDIR}/sstate-cache&quot;<br><br>#<br># Whe=
re to place the build output<br>#<br># This option specifies where the bulk=
 of the building work should be done and<br># where BitBake should place it=
s temporary files and output. Keep in mind that<br># this includes the extr=
action and compilation of many applications and the toolchain<br># which ca=
n use Gigabytes of hard disk space.<br>#<br># The default is a tmp director=
y under TOPDIR.<br>#<br>#TMPDIR =3D &quot;${TOPDIR}/tmp&quot;<br><br>#<br>#=
 Default policy config<br>#<br># The distribution setting controls which po=
licy settings are used as defaults.<br># The default value is fine for gene=
ral Yocto project use, at least initially.<br># Ultimately when creating cu=
stom policy, people will likely end up subclassing <br># these defaults.<br=
>#<br>DISTRO ?=3D &quot;poky&quot;<br># As an example of a subclass there i=
s a &quot;bleeding&quot; edge policy configuration<br># where many versions=
 are set to the absolute latest code from the upstream <br># source control=
 systems. This is just mentioned here as an example, its not<br># useful to=
 most new users.<br># DISTRO ?=3D &quot;poky-bleeding&quot;<br><br>#<br># P=
ackage Management configuration</div><div>#<br># This variable lists which =
packaging formats to enable. Multiple package backends<br># can be enabled =
at once and the first item listed in the variable will be used<br># to gene=
rate the root filesystems.<br># Options are:<br># =C2=A0- &#39;package_deb&=
#39; for debian style deb files<br># =C2=A0- &#39;package_ipk&#39; for ipk =
files are used by opkg (a debian style embedded package manager)<br># =C2=
=A0- &#39;package_rpm&#39; for rpm style packages<br># E.g.: PACKAGE_CLASSE=
S ?=3D &quot;package_rpm package_deb package_ipk&quot;<br># OE-Core default=
s to ipkg, whilst Poky defaults to rpm:<br># PACKAGE_CLASSES ?=3D &quot;pac=
kage_rpm&quot;<br><br>#<br># SDK target architecture<br>#<br># This variabl=
e specifies the architecture to build SDK items for and means<br># you can =
build the SDK packages for architectures other than the machine you are<br>=
# running the build on (i.e. building i686 packages on an x86_64 host).<br>=
# Supported values are i686, x86_64, aarch64<br>#SDKMACHINE ?=3D &quot;i686=
&quot;<br><br>#<br># Extra image configuration defaults<br>#<br># The EXTRA=
_IMAGE_FEATURES variable allows extra packages to be added to the generated=
<br># images. Some of these options are added to certain image types automa=
tically. The<br># variable can contain the following options:<br># =C2=A0&q=
uot;dbg-pkgs&quot; =C2=A0 =C2=A0 =C2=A0 - add -dbg packages for all install=
ed packages<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (adds symbol information for debugging/profiling)<br># =C2=A0=
&quot;src-pkgs&quot; =C2=A0 =C2=A0 =C2=A0 - add -src packages for all insta=
lled packages<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (adds source code for debugging)<br># =C2=A0&quot;dev-pkgs&qu=
ot; =C2=A0 =C2=A0 =C2=A0 - add -dev packages for all installed packages<br>=
# =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (us=
eful if you want to develop against libs in the image)<br># =C2=A0&quot;pte=
st-pkgs&quot; =C2=A0 =C2=A0 - add -ptest packages for all ptest-enabled pac=
kages<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (useful if you want to run the package test suites)<br># =C2=A0&quot=
;tools-sdk&quot; =C2=A0 =C2=A0 =C2=A0- add development tools (gcc, make, pk=
gconfig etc.)<br># =C2=A0&quot;tools-debug&quot; =C2=A0 =C2=A0- add debuggi=
ng tools (gdb, strace)<br># =C2=A0&quot;eclipse-debug&quot; =C2=A0- add Ecl=
ipse remote debugging support<br># =C2=A0&quot;tools-profile&quot; =C2=A0- =
add profiling tools (oprofile, lttng, valgrind)<br># =C2=A0&quot;tools-test=
apps&quot; - add useful testing tools (ts_print, aplay, arecord etc.)<br># =
=C2=A0&quot;debug-tweaks&quot; =C2=A0 - make an image suitable for developm=
ent<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 e.g. ssh root access has a blank password<br># There are other applicat=
ion targets that can be used here too, see<br># meta/classes-recipe/image.b=
bclass and<br># meta/classes-recipe/core-image.bbclass for more details.<br=
># We default to enabling the debugging tweaks.<br>EXTRA_IMAGE_FEATURES ?=
=3D &quot;debug-tweaks&quot;</div><div>#<br># Additional image features<br>=
#<br># The following is a list of additional classes to use when building i=
mages which<br># enable extra features. Some available options which can be=
 included in this variable<br># are:<br># =C2=A0 - &#39;buildstats&#39; col=
lect build statistics<br>USER_CLASSES ?=3D &quot;buildstats&quot;<br><br>#<=
br># Runtime testing of images<br>#<br># The build system can test booting =
virtual machine images under qemu (an emulator)<br># after any root filesys=
tems are created and run tests against those images. It can also<br># run t=
ests against any SDK that are built. To enable this uncomment these lines.<=
br># See meta/classes-recipe/test{image,sdk}.bbclass for further details.<b=
r>#IMAGE_CLASSES +=3D &quot;testimage testsdk&quot;<br>#TESTIMAGE_AUTO:qemu=
all =3D &quot;1&quot;<br><br>#<br># Interactive shell configuration<br>#<br=
># Under certain circumstances the system may need input from you and to do=
 this it<br># can launch an interactive shell. It needs to do this since th=
e build is<br># multithreaded and needs to be able to handle the case where=
 more than one parallel<br># process may require the user&#39;s attention. =
The default is iterate over the available<br># terminal types to find one t=
hat works.<br>#<br># Examples of the occasions this may happen are when res=
olving patches which cannot<br># be applied, to use the devshell or the ker=
nel menuconfig<br>#<br># Supported values are auto, gnome, xfce, rxvt, scre=
en, konsole (KDE 3.x only), none<br># Note: currently, Konsole support only=
 works for KDE 3.x due to the way<br># newer Konsole versions behave<br>#OE=
_TERMINAL =3D &quot;auto&quot;<br># By default disable interactive patch re=
solution (tasks will just fail instead):<br>PATCHRESOLVE =3D &quot;noop&quo=
t;<br><br>#<br># Disk Space Monitoring during the build<br>#<br># Monitor t=
he disk space during the build. If there is less that 1GB of space or less<=
br># than 100K inodes in any key build location (TMPDIR, DL_DIR, SSTATE_DIR=
), gracefully<br># shutdown the build. If there is less than 100MB or 1K in=
odes, perform a hard halt<br># of the build. The reason for this is that ru=
nning completely out of space can corrupt<br># files and damages the build =
in ways which may not be easily recoverable.<br># It&#39;s necessary to mon=
itor /tmp, if there is no space left the build will fail<br># with very exo=
tic errors.</div><div>BB_DISKMON_DIRS ??=3D &quot;\<br>=C2=A0 =C2=A0 STOPTA=
SKS,${TMPDIR},1G,100K \<br>=C2=A0 =C2=A0 STOPTASKS,${DL_DIR},1G,100K \<br>=
=C2=A0 =C2=A0 STOPTASKS,${SSTATE_DIR},1G,100K \<br>=C2=A0 =C2=A0 STOPTASKS,=
/tmp,100M,100K \<br>=C2=A0 =C2=A0 HALT,${TMPDIR},100M,1K \<br>=C2=A0 =C2=A0=
 HALT,${DL_DIR},100M,1K \<br>=C2=A0 =C2=A0 HALT,${SSTATE_DIR},100M,1K \<br>=
=C2=A0 =C2=A0 HALT,/tmp,10M,1K&quot;<br><br>#<br># Shared-state files from =
other locations<br>#<br># As mentioned above, shared state files are prebui=
lt cache data objects which can be<br># used to accelerate build time. This=
 variable can be used to configure the system<br># to search other mirror l=
ocations for these objects before it builds the data itself.<br>#<br># This=
 can be a filesystem directory, or a remote url such as https or ftp. These=
<br># would contain the sstate-cache results from previous builds (possibly=
 from other<br># machines). This variable works like fetcher MIRRORS/PREMIR=
RORS and points to the<br># cache locations to check for the shared objects=
.<br># NOTE: if the mirror uses the same structure as SSTATE_DIR, you need =
to add PATH<br># at the end as shown in the examples below. This will be su=
bstituted with the<br># correct path within the directory structure.<br>#SS=
TATE_MIRRORS ?=3D &quot;\<br>#file://.* <a href=3D"https://someserver.tld/s=
hare/sstate/PATH;downloadfilename=3DPATH">https://someserver.tld/share/ssta=
te/PATH;downloadfilename=3DPATH</a> \<br>#file://.* file:///some/local/dir/=
sstate/PATH&quot;<br><br>#<br># Yocto Project SState Mirror<br>#<br># The Y=
octo Project has prebuilt artefacts available for its releases, you can ena=
ble<br># use of these by uncommenting some of the following lines. This wil=
l mean the build uses<br># the network to check for artefacts at the start =
of builds, which does slow it down<br># initially but it will then speed up=
 the builds by not having to build things if they are<br># present in the c=
ache. It assumes you can download something faster than you can build it<br=
># which will depend on your network.<br># Note: For this to work you also =
need hash-equivalence passthrough to the matching server<br># There is a ch=
oice between our sstate server directly and a faster content delivery netwo=
rk<br># (CDN) kindly provided by JSDelivr, uncomment one of the SSTATE_MIRR=
ORS lines, not both.<br># Using the CDN rather than the <a href=3D"http://y=
octoproject.org">yoctoproject.org</a> address is suggested/preferred.<br>#<=
br>#BB_HASHSERVE_UPSTREAM =3D &quot;<a href=3D"http://hashserv.yocto.io:868=
7">hashserv.yocto.io:8687</a>&quot;<br>#SSTATE_MIRRORS ?=3D &quot;file://.*=
 <a href=3D"http://cdn.jsdelivr.net/yocto/sstate/all/PATH;downloadfilename=
=3DPATH">http://cdn.jsdelivr.net/yocto/sstate/all/PATH;downloadfilename=3DP=
ATH</a>&quot;<br>#<br>###SSTATE_MIRRORS ?=3D &quot;file://.* <a href=3D"htt=
p://sstate.yoctoproject.org/all/PATH;downloadfilename=3DPATH">http://sstate=
.yoctoproject.org/all/PATH;downloadfilename=3DPATH</a>&quot;</div><div>#<br=
># Qemu configuration<br>#<br># By default native qemu will build with a bu=
iltin VNC server where graphical output can be<br># seen. The line below en=
ables the SDL UI frontend too.<br>PACKAGECONFIG:append:pn-qemu-system-nativ=
e =3D &quot; sdl&quot;<br># By default libsdl2-native will be built, if you=
 want to use your host&#39;s libSDL instead of <br># the minimal libsdl bui=
lt by libsdl2-native then uncomment the ASSUME_PROVIDED line below.<br>#ASS=
UME_PROVIDED +=3D &quot;libsdl2-native&quot;<br><br># You can also enable t=
he Gtk UI frontend, which takes somewhat longer to build, but adds<br># a h=
andy set of menus for controlling the emulator.<br>#PACKAGECONFIG:append:pn=
-qemu-system-native =3D &quot; gtk+&quot;<br><br>#<br># Hash Equivalence<br=
>#<br># Enable support for automatically running a local hash equivalence s=
erver and<br># instruct bitbake to use a hash equivalence aware signature g=
enerator. Hash<br># equivalence improves reuse of sstate by detecting when =
a given sstate<br># artifact can be reused as equivalent, even if the curre=
nt task hash doesn&#39;t<br># match the one that generated the artifact.<br=
>#<br># A shared hash equivalent server can be set with &quot;&lt;HOSTNAME&=
gt;:&lt;PORT&gt;&quot; format<br>#<br>#BB_HASHSERVE =3D &quot;auto&quot;<br=
>#BB_SIGNATURE_HANDLER =3D &quot;OEEquivHash&quot;<br><br>#<br># Memory Res=
ident Bitbake<br>#<br># Bitbake&#39;s server component can stay in memory a=
fter the UI for the current command<br># has completed. This means subseque=
nt commands can run faster since there is no need<br># for bitbake to reloa=
d cache files and so on. Number is in seconds, after which the<br># server =
will shut down.<br>#<br>#BB_SERVER_TIMEOUT =3D &quot;60&quot;<br><br># CONF=
_VERSION is increased each time build/conf/ changes incompatibly and is use=
d to<br># track the version of this file when it was generated. This can sa=
fely be ignored if<br># this doesn&#39;t mean anything to you.</div><div>CO=
NF_VERSION =3D &quot;2&quot;<br>LICENSE_FLAGS_ACCEPTED =3D &quot;commercial=
&quot;<br>#PREFERRED_PROVIDER_virtual/kernel ?=3D &quot;linux-intel&quot;<b=
r>#PREFERRED_VERSION_linux-intel =3D &quot;5.15.137&quot;<br>IMAGE_INSTALL:=
append =3D &quot; pciutils&quot;<br>IMAGE_INSTALL:append =3D &quot; i2c-too=
ls&quot;<br>IMAGE_INSTALL:append =3D &quot; usbutils&quot;<br>IMAGE_INSTALL=
:append =3D &quot; openssh&quot;<br>IMAGE_INSTALL:append =3D &quot; sudo&qu=
ot;<br>MACHINE_FEATURES =3D &quot; pci&quot;<br>#Package for filesystem ide=
ntification<br>IMAGE_INSTALL:append =3D &quot; util-linux&quot;<br>#Package=
 For mountingext2, ext3, or ext4 filesystems<br>IMAGE_INSTALL:append =3D &q=
uot; e2fsprogs&quot;<br>#Package For mounting NTFS filesystems<br>IMAGE_INS=
TALL:append =3D &quot; ntfs-3g&quot;<br>#Package For mounting FAT filesyste=
ms<br>IMAGE_INSTALL:append =3D &quot; dosfstools&quot;<br># provides detail=
ed information about the network interface card (Ethernet Card)<br>IMAGE_IN=
STALL:append =3D &quot; ethtool&quot;<br>#OE_TERMINAL =3D &quot;screen&quot=
;<br>#IMAGE_FSTYPES +=3D &quot; hddimg&quot;<br>#IMAGE_FSTYPES +=3D &quot; =
wic.xz&quot;<br>#IMAGE_ROOTFS_EXTRA_SPACE =3D &quot;0&quot;<br>#IMAGE_NAME_=
SUFFIX =3D &quot;&quot;<br>#IMAGE_INSTALL_append =3D+ &quot;gstreamer1.0-pl=
ugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-=
libav gstreamer1.0-vaapi&quot;<br></div><div><br></div></div>

--000000000000d27d28061283b103--

