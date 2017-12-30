Return-Path: <andrew.stuart@supercoders.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38EEFE00D75; Fri, 29 Dec 2017 23:27:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 572 seconds by postgrey-1.32 at yocto-www;
	Fri, 29 Dec 2017 23:27:53 PST
Received: from mail.supercoders.com.au (mail.supercoders.com.au [54.215.13.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D685EE00D1C
	for <yocto@yoctoproject.org>; Fri, 29 Dec 2017 23:27:53 -0800 (PST)
Received: from [192.168.1.126] (CPE-144-136-188-55.sa.bigpond.net.au
	[144.136.188.55])
	by mail.supercoders.com.au (Postfix) with ESMTPS id 90296602F7
	for <yocto@yoctoproject.org>; Sat, 30 Dec 2017 07:18:20 +0000 (UTC)
From: Andrew Stuart <andrew.stuart@supercoders.com.au>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <13F990CF-EDDD-4DE1-B0B6-A4A310C996B4@supercoders.com.au>
Date: Sat, 30 Dec 2017 18:18:17 +1100
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: How to build pure initramfs run from ram Yocto with some packages in initramfs?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 30 Dec 2017 07:27:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi folks,

With Tiny Core Linux I am able to have a kernel file plus an initramfs =
that boots

My goal is to configure Yocto to these requirements:

1: kernel plus initramfs only - runs entirely from RAM after initial =
booting from disk.
2: openssh server installed
3: nginx installed
4: isc dhcp client installed
5: virtualization drivers installed for *both* Xen and KVM - so the same =
code can boot on either virtualization type


I=E2=80=99ve spent all day fiddling with every possible variation of =
core-image-minimal-initramfs local.conf and bblayers.conf but nothing I =
do will install any of the packages above into the initramfs that is =
created after running 'bitbake core-image-minimal-initramfs=E2=80=99

I=E2=80=99m out of ideas. Can anyone point me in the right direction =
please?

thanks!!

Here=E2=80=99s my conf/bblayers.conf and conf.local.conf

ubuntu@ip-10-0-0-63:/opt/mountpoint/poky-rocko-18.0.0/build$ cat =
conf/bblayers.conf
# POKY_BBLAYERS_CONF_VERSION is increased each time =
build/conf/bblayers.conf
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION =3D "2"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
  /mnt/home/ubuntu/poky-rocko-18.0.0/meta \
  /mnt/home/ubuntu/poky-rocko-18.0.0/meta-openembedded/meta-filesystems =
\
  /mnt/home/ubuntu/poky-rocko-18.0.0/meta-openembedded/meta-networking \
  /mnt/home/ubuntu/poky-rocko-18.0.0/meta-openembedded/meta-webserver \
  /mnt/home/ubuntu/poky-rocko-18.0.0/meta-openembedded/meta-oe \
  /mnt/home/ubuntu/poky-rocko-18.0.0/meta-openembedded/meta-python \
  /mnt/home/ubuntu/poky-rocko-18.0.0/openembedded-core/meta \
  /mnt/home/ubuntu/poky-rocko-18.0.0/meta-poky \
  /mnt/home/ubuntu/poky-rocko-18.0.0/meta-virtualization \
  /mnt/home/ubuntu/poky-rocko-18.0.0/meta-yocto-bsp \
  /mnt/home/ubuntu/poky-rocko-18.0.0/oe-meta-go \
  "

ubuntu@ip-10-0-0-63:/opt/mountpoint/poky-rocko-18.0.0/build$


ubuntu@ip-10-0-0-63:/opt/mountpoint/poky-rocko-18.0.0/build$ cat =
conf/local.conf
#
# This file is your local configuration file and is where all local user =
settings
# are placed. The comments in this file give some guide to the options a =
new user
# to the system might want to change but pretty much any configuration =
option can
# be set in this file. More adventurous users can look at =
local.conf.extended
# which contains other examples of configuration which can be placed in =
this file
# but new users likely won't need any of them initially.
#
# Lines starting with the '#' character are commented out and in some =
cases the
# default values are provided as comments to show people example syntax. =
Enabling
# the option is a question of removing the # character and making any =
change to the
# variable as required.

#
# Machine Selection
#
# You need to select a specific machine to target the build with. There =
are a selection
# of emulated machines available which can boot and run in the QEMU =
emulator:
#
#MACHINE ?=3D "qemuarm"
#MACHINE ?=3D "qemuarm64"
#MACHINE ?=3D "qemumips"
#MACHINE ?=3D "qemumips64"
#MACHINE ?=3D "qemuppc"
#MACHINE ?=3D "qemux86"
MACHINE ?=3D "qemux86-64"
#
# There are also the following hardware board target machines included =
for
# demonstration purposes:
#
#MACHINE ?=3D "beaglebone"
#MACHINE ?=3D "genericx86"
#MACHINE ?=3D "genericx86-64"
#MACHINE ?=3D "mpc8315e-rdb"
#MACHINE ?=3D "edgerouter"
#
# This sets the default machine to be qemux86 if no other machine is =
selected:
#MACHINE ??=3D "qemux86"
DISTRO_FEATURES_append =3D " xen"
EXTRA_IMAGE_FEATURES =3D "debug-tweaks"
DISTRO_FEATURES_append =3D " virtualization"
#CORE_IMAGE_EXTRA_INSTALL +=3D "openssh-sshd"
#CORE_IMAGE_EXTRA_INSTALL +=3D "dhcp-client"
#CORE_IMAGE_EXTRA_INSTALL +=3D "dropbear"
#CORE_IMAGE_EXTRA_INSTALL +=3D "dropbear"
#IMAGE_INSTALL_append =3D " dropbear"
#IMAGE_INSTALL_append =3D " packagegroup-core-ssh-openssh"
IMAGE_INSTALL_append =3D " ssh-server-openssh"
IMAGE_INSTALL_append =3D " dhcp-client"
IMAGE_INSTALL_append =3D " nginx"

#
# Where to place downloads
#
# During a first build the system will download many different source =
code tarballs
# from various upstream projects. This can take a while, particularly if =
your network
# connection is slow. These are all stored in DL_DIR. When wiping and =
rebuilding you
# can preserve this directory to speed up this part of subsequent =
builds. This directory
# is safe to share between multiple builds on the same machine too.
#
# The default is a downloads directory under TOPDIR which is the build =
directory.
#
#DL_DIR ?=3D "${TOPDIR}/downloads"

#
# Where to place shared-state files
#
# BitBake has the capability to accelerate builds based on previously =
built output.
# This is done using "shared state" files which can be thought of as =
cache objects
# and this option determines where those files are placed.
#
# You can wipe out TMPDIR leaving this directory intact and the build =
would regenerate
# from these files if no changes were made to the configuration. If =
changes were made
# to the configuration, only shared state files where the state was =
still valid would
# be used (done using checksums).
#
# The default is a sstate-cache directory under TOPDIR.
#
#SSTATE_DIR ?=3D "${TOPDIR}/sstate-cache"

#
# Where to place the build output
#
# This option specifies where the bulk of the building work should be =
done and
# where BitBake should place its temporary files and output. Keep in =
mind that
# this includes the extraction and compilation of many applications and =
the toolchain
# which can use Gigabytes of hard disk space.
#
# The default is a tmp directory under TOPDIR.
#
#TMPDIR =3D "${TOPDIR}/tmp"

#
# Default policy config
#
# The distribution setting controls which policy settings are used as =
defaults.
# The default value is fine for general Yocto project use, at least =
initially.
# Ultimately when creating custom policy, people will likely end up =
subclassing
# these defaults.
#
DISTRO ?=3D "poky"
# As an example of a subclass there is a "bleeding" edge policy =
configuration
# where many versions are set to the absolute latest code from the =
upstream
# source control systems. This is just mentioned here as an example, its =
not
# useful to most new users.
# DISTRO ?=3D "poky-bleeding"

#
# Package Management configuration
#
# This variable lists which packaging formats to enable. Multiple =
package backends
# can be enabled at once and the first item listed in the variable will =
be used
# to generate the root filesystems.
# Options are:
#  - 'package_deb' for debian style deb files
#  - 'package_ipk' for ipk files are used by opkg (a debian style =
embedded package manager)
#  - 'package_rpm' for rpm style packages
# E.g.: PACKAGE_CLASSES ?=3D "package_rpm package_deb package_ipk"
# We default to rpm:
PACKAGE_CLASSES ?=3D "package_rpm"

#
# SDK target architecture
#
# This variable specifies the architecture to build SDK items for and =
means
# you can build the SDK packages for architectures other than the =
machine you are
# running the build on (i.e. building i686 packages on an x86_64 host).
# Supported values are i686 and x86_64
#SDKMACHINE ?=3D "i686"

#
# Extra image configuration defaults
#
# The EXTRA_IMAGE_FEATURES variable allows extra packages to be added to =
the generated
# images. Some of these options are added to certain image types =
automatically. The
# variable can contain the following options:
#  "dbg-pkgs"       - add -dbg packages for all installed packages
#                     (adds symbol information for debugging/profiling)
#  "dev-pkgs"       - add -dev packages for all installed packages
#                     (useful if you want to develop against libs in the =
image)
#  "ptest-pkgs"     - add -ptest packages for all ptest-enabled packages
#                     (useful if you want to run the package test =
suites)
#  "tools-sdk"      - add development tools (gcc, make, pkgconfig etc.)
#  "tools-debug"    - add debugging tools (gdb, strace)
#  "eclipse-debug"  - add Eclipse remote debugging support
#  "tools-profile"  - add profiling tools (oprofile, lttng, valgrind)
#  "tools-testapps" - add useful testing tools (ts_print, aplay, arecord =
etc.)
#  "debug-tweaks"   - make an image suitable for development
#                     e.g. ssh root access has a blank password
# There are other application targets that can be used here too, see
# meta/classes/image.bbclass and meta/classes/core-image.bbclass for =
more details.
# We default to enabling the debugging tweaks.
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"

#
# Additional image features
#
# The following is a list of additional classes to use when building =
images which
# enable extra features. Some available options which can be included in =
this variable
# are:
#   - 'buildstats' collect build statistics
#   - 'image-mklibs' to reduce shared library files size for an image
#   - 'image-prelink' in order to prelink the filesystem image
# NOTE: if listing mklibs & prelink both, then make sure mklibs is =
before prelink
# NOTE: mklibs also needs to be explicitly enabled for a given image, =
see local.conf.extended
USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"

#
# Runtime testing of images
#
# The build system can test booting virtual machine images under qemu =
(an emulator)
# after any root filesystems are created and run tests against those =
images. To
# enable this uncomment this line. See classes/testimage(-auto).bbclass =
for
# further details.
#TEST_IMAGE =3D "1"
#
# Interactive shell configuration
#
# Under certain circumstances the system may need input from you and to =
do this it
# can launch an interactive shell. It needs to do this since the build =
is
# multithreaded and needs to be able to handle the case where more than =
one parallel
# process may require the user's attention. The default is iterate over =
the available
# terminal types to find one that works.
#
# Examples of the occasions this may happen are when resolving patches =
which cannot
# be applied, to use the devshell or the kernel menuconfig
#
# Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE 3.x =
only), none
# Note: currently, Konsole support only works for KDE 3.x due to the way
# newer Konsole versions behave
#OE_TERMINAL =3D "auto"
# By default disable interactive patch resolution (tasks will just fail =
instead):
PATCHRESOLVE =3D "noop"

#
# Disk Space Monitoring during the build
#
# Monitor the disk space during the build. If there is less that 1GB of =
space or less
# than 100K inodes in any key build location (TMPDIR, DL_DIR, =
SSTATE_DIR), gracefully
# shutdown the build. If there is less that 100MB or 1K inodes, perform =
a hard abort
# of the build. The reason for this is that running completely out of =
space can corrupt
# files and damages the build in ways which may not be easily =
recoverable.
# It's necesary to monitor /tmp, if there is no space left the build =
will fail
# with very exotic errors.
BB_DISKMON_DIRS =3D "\
    STOPTASKS,${TMPDIR},1G,100K \
    STOPTASKS,${DL_DIR},1G,100K \
    STOPTASKS,${SSTATE_DIR},1G,100K \
    STOPTASKS,/tmp,100M,100K \
    ABORT,${TMPDIR},100M,1K \
    ABORT,${DL_DIR},100M,1K \
    ABORT,${SSTATE_DIR},100M,1K \
    ABORT,/tmp,10M,1K"

#
# Shared-state files from other locations
#
# As mentioned above, shared state files are prebuilt cache data objects =
which can
# used to accelerate build time. This variable can be used to configure =
the system
# to search other mirror locations for these objects before it builds =
the data itself.
#
# This can be a filesystem directory, or a remote url such as http or =
ftp. These
# would contain the sstate-cache results from previous builds (possibly =
from other
# machines). This variable works like fetcher MIRRORS/PREMIRRORS and =
points to the
# cache locations to check for the shared objects.
# NOTE: if the mirror uses the same structure as SSTATE_DIR, you need to =
add PATH
# at the end as shown in the examples below. This will be substituted =
with the
# correct path within the directory structure.
#SSTATE_MIRRORS ?=3D "\
#file://.* http://someserver.tld/share/sstate/PATH;downloadfilename=3DPATH=
 \n \
#file://.* file:///some/local/dir/sstate/PATH"


#
# Qemu configuration
#
# By default qemu will build with a builtin VNC server where graphical =
output can be
# seen. The two lines below enable the SDL backend too. By default =
libsdl-native will
# be built, if you want to use your host's libSDL instead of the minimal =
libsdl built
# by libsdl-native then uncomment the ASSUME_PROVIDED line below.
PACKAGECONFIG_append_pn-qemu-native =3D " sdl"
PACKAGECONFIG_append_pn-nativesdk-qemu =3D " sdl"
#ASSUME_PROVIDED +=3D "libsdl-native"

# CONF_VERSION is increased each time build/conf/ changes incompatibly =
and is used to
# track the version of this file when it was generated. This can safely =
be ignored if
# this doesn't mean anything to you.
CONF_VERSION =3D "1"
ubuntu@ip-10-0-0-63:/opt/mountpoint/poky-rocko-18.0.0/build$




