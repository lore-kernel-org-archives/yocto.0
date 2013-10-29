Return-Path: <msvilans@aeonyx.ca>
Received: from homiemail-a104.g.dreamhost.com (caiajhbdcaid.dreamhost.com
	[208.97.132.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F3B2E01756
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 14:40:19 -0700 (PDT)
Received: from homiemail-a104.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a104.g.dreamhost.com (Postfix) with ESMTP id 1ECA92005D108
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 14:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=aeonyx.ca; h=message-id
	:date:from:mime-version:to:subject:content-type; s=aeonyx.ca;
	bh=iMnHkDehRTUqAeJ/ivqxnsUcdzY=; b=ABSxGRvxXkZljHcnQHaw+3/LYHxI
	9mQBVAI/2aqh+loQHAe+RDCvfY7DYlrCtujbChYey9m54+18ZKA41MqQ7KEZccQ2
	tzgDb7TpVX2i5vU5iru1XyKtkzBnreZD68mSAR2iYhrXJSuW3OMMqKjB5LWrDb0j
	7gbC/WCqcwsL7Ic=
Received: from [192.168.1.127] (216-167-250-35.eastlink.ca [216.167.250.35])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: msvilans@aeonyx.ca)
	by homiemail-a104.g.dreamhost.com (Postfix) with ESMTPSA id
	3052B2005D107
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 14:40:18 -0700 (PDT)
Message-ID: <52702B41.1040504@aeonyx.ca>
Date: Tue, 29 Oct 2013 17:40:17 -0400
From: Markus Svilans <msvilans@aeonyx.ca>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Fail to build core-image-minimal when MACHINE=genericx86-64
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
X-List-Received-Date: Tue, 29 Oct 2013 21:40:20 -0000
X-Groupsio-MsgNum: 16787
Content-Type: multipart/mixed; boundary="------------080004040102050108060902"

--------------080004040102050108060902
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Dear list,

I'm trying to build a core-image-minimal recipe using 
MACHINE=genericx86-64 but it always fails at syslinux-native-6.01 
recipe. I've tried deleting my tmp and build folders several times, but 
it will not build. I am using the genericx86-64 BSP package downloaded 
from the Yocto website, located at:

https://www.yoctoproject.org/download/intel-x86-64-based-pcs-and-devices-genericx86-64

File: genericx86-64-dora-10.0.0.tar.bz2

I extracted it to:
/home/markus/yocto/genericx86-64-dora-10.0.0

Then ran the "oe-init-build-env" script and editted local.conf to enable 
parallel make, and changed MACHINE to genericx86-64. (I've attached a 
copy of my local.conf file.)

After that, I ran the command "bitbake core-image-minimal" and sat back, 
waiting for it to build.

The build always fails at syslinux-native.

I tried several things:
- deleted tmp directory, re-try build = failure
- deleted build directory, re-try build = failure
- deleted build directory, build only syslinux = failure
- deleted build directory, build only syslinux-native = failure

I think I may be doing something wrong, because about an hour of Google 
searching did not turn up anybody having a similar issue.

I am running Kubuntu 13.10 64-bit.

Can anyone please offer any advice, so that I can successfully build 
x86-64 images?

Thanks very much
Markus



--------------080004040102050108060902
Content-Type: text/plain; charset=UTF-8;
 name="local.conf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="local.conf"

#
# This file is your local configuration file and is where all local user settings
# are placed. The comments in this file give some guide to the options a new user
# to the system might want to change but pretty much any configuration option can
# be set in this file. More adventurous users can look at local.conf.extended 
# which contains other examples of configuration which can be placed in this file
# but new users likely won't need any of them initially.
#
# Lines starting with the '#' character are commented out and in some cases the 
# default values are provided as comments to show people example syntax. Enabling
# the option is a question of removing the # character and making any change to the
# variable as required.

#
# Parallelism Options
#
# These two options control how much parallelism BitBake should use. The first 
# option determines how many tasks bitbake should run in parallel:
#
BB_NUMBER_THREADS ?= "8"
# 
# The second option controls how many processes make should run in parallel when
# running compile tasks:
#
PARALLEL_MAKE ?= "-j 8"
#
# For a quad-core machine, BB_NUMBER_THREADS = "4", PARALLEL_MAKE = "-j 4" would
# be appropriate for example.

#
# Machine Selection
#
# You need to select a specific machine to target the build with. There are a selection
# of emulated machines available which can boot and run in the QEMU emulator:
#
#MACHINE ?= "qemuarm"
#MACHINE ?= "qemumips"
#MACHINE ?= "qemuppc"
#MACHINE ?= "qemux86"
#MACHINE ?= "qemux86-64"
#
# There are also the following hardware board target machines included for 
# demonstration purposes:
#
#MACHINE ?= "beagleboard"
#MACHINE ?= "genericx86"
MACHINE ?= "genericx86-64"
#MACHINE ?= "mpc8315e-rdb"
#MACHINE ?= "routerstationpro"
#
# This sets the default machine to be qemux86 if no other machine is selected:
MACHINE ??= "qemux86"

#
# Where to place downloads
#
# During a first build the system will download many different source code tarballs
# from various upstream projects. This can take a while, particularly if your network
# connection is slow. These are all stored in DL_DIR. When wiping and rebuilding you
# can preserve this directory to speed up this part of subsequent builds. This directory
# is safe to share between multiple builds on the same machine too.
#
# The default is a downloads directory under TOPDIR which is the build directory.
#
#DL_DIR ?= "${TOPDIR}/downloads"

#
# Where to place shared-state files
#
# BitBake has the capability to accelerate builds based on previously built output.
# This is done using "shared state" files which can be thought of as cache objects
# and this option determines where those files are placed.
#
# You can wipe out TMPDIR leaving this directory intact and the build would regenerate
# from these files if no changes were made to the configuration. If changes were made
# to the configuration, only shared state files where the state was still valid would
# be used (done using checksums).
#
# The default is a sstate-cache directory under TOPDIR.
#
#SSTATE_DIR ?= "${TOPDIR}/sstate-cache"

#
# Where to place the build output
#
# This option specifies where the bulk of the building work should be done and
# where BitBake should place its temporary files and output. Keep in mind that
# this includes the extraction and compilation of many applications and the toolchain
# which can use Gigabytes of hard disk space.
#
# The default is a tmp directory under TOPDIR.
#
#TMPDIR = "${TOPDIR}/tmp"

#
# Default policy config
#
# The distribution setting controls which policy settings are used as defaults.
# The default value is fine for general Yocto project use, at least initially.
# Ultimately when creating custom policy, people will likely end up subclassing 
# these defaults.
#
DISTRO ?= "poky"
# As an example of a subclass there is a "bleeding" edge policy configuration
# where many versions are set to the absolute latest code from the upstream 
# source control systems. This is just mentioned here as an example, its not
# useful to most new users.
# DISTRO ?= "poky-bleeding"

#
# Package Management configuration
#
# This variable lists which packaging formats to enable. Multiple package backends 
# can be enabled at once and the first item listed in the variable will be used 
# to generate the root filesystems.
# Options are:
#  - 'package_deb' for debian style deb files
#  - 'package_ipk' for ipk files are used by opkg (a debian style embedded package manager)
#  - 'package_rpm' for rpm style packages
# E.g.: PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk"
# We default to rpm:
PACKAGE_CLASSES ?= "package_rpm"

#
# SDK/ADT target architecture
#
# This variable specified the architecture to build SDK/ADT items for and means
# you can build the SDK packages for architectures other than the machine you are 
# running the build on (i.e. building i686 packages on an x86_64 host._
# Supported values are i686 and x86_64
#SDKMACHINE ?= "i686"

#
# Extra image configuration defaults
#
# The EXTRA_IMAGE_FEATURES variable allows extra packages to be added to the generated 
# images. Some of these options are added to certain image types automatically. The
# variable can contain the following options:
#  "dbg-pkgs"       - add -dbg packages for all installed packages
#                     (adds symbol information for debugging/profiling)
#  "dev-pkgs"       - add -dev packages for all installed packages
#                     (useful if you want to develop against libs in the image)
#  "ptest-pkgs"     - add -ptest packages for all ptest-enabled packages
#                     (useful if you want to run the package test suites)
#  "tools-sdk"      - add development tools (gcc, make, pkgconfig etc.)
#  "tools-debug"    - add debugging tools (gdb, strace)
#  "eclipse-debug"  - add Eclipse remote debugging support
#  "tools-profile"  - add profiling tools (oprofile, exmap, lttng, valgrind)
#  "tools-testapps" - add useful testing tools (ts_print, aplay, arecord etc.)
#  "debug-tweaks"   - make an image suitable for development
#                     e.g. ssh root access has a blank password
# There are other application targets that can be used here too, see
# meta/classes/image.bbclass and meta/classes/core-image.bbclass for more details.
# We default to enabling the debugging tweaks.
EXTRA_IMAGE_FEATURES = "debug-tweaks"

#
# Additional image features
#
# The following is a list of additional classes to use when building images which
# enable extra features. Some available options which can be included in this variable 
# are:
#   - 'buildstats' collect build statistics
#   - 'image-mklibs' to reduce shared library files size for an image
#   - 'image-prelink' in order to prelink the filesystem image
#   - 'image-swab' to perform host system intrusion detection
# NOTE: if listing mklibs & prelink both, then make sure mklibs is before prelink
# NOTE: mklibs also needs to be explicitly enabled for a given image, see local.conf.extended
USER_CLASSES ?= "buildstats image-mklibs image-prelink"

#
# Runtime testing of images
#
# The build system can test booting virtual machine images under qemu (an emulator)
# after any root filesystems are created and run tests against those images. To
# enable this uncomment this line. See classes/testimage(-auto).bbclass for
# further details.
#TEST_IMAGE = "1"
#
# Interactive shell configuration
#
# Under certain circumstances the system may need input from you and to do this it 
# can launch an interactive shell. It needs to do this since the build is 
# multithreaded and needs to be able to handle the case where more than one parallel
# process may require the user's attention. The default is iterate over the available
# terminal types to find one that works.
#
# Examples of the occasions this may happen are when resolving patches which cannot
# be applied, to use the devshell or the kernel menuconfig
#
# Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE 3.x only), none
# Note: currently, Konsole support only works for KDE 3.x due to the way
# newer Konsole versions behave
#OE_TERMINAL = "auto"
# By default disable interactive patch resolution (tasks will just fail instead):
PATCHRESOLVE = "noop"

#
# Disk Space Monitoring during the build
#
# Monitor the disk space during the build. If there is less that 1GB of space or less
# than 100K inodes in any key build location (TMPDIR, DL_DIR, SSTATE_DIR), gracefully
# shutdown the build. If there is less that 100MB or 1K inodes, perform a hard abort
# of the build. The reason for this is that running completely out of space can corrupt
# files and damages the build in ways which may not be easily recoverable.
BB_DISKMON_DIRS = "\
    STOPTASKS,${TMPDIR},1G,100K \
    STOPTASKS,${DL_DIR},1G,100K \
    STOPTASKS,${SSTATE_DIR},1G,100K \
    ABORT,${TMPDIR},100M,1K \
    ABORT,${DL_DIR},100M,1K \
    ABORT,${SSTATE_DIR},100M,1K" 

#
# Shared-state files from other locations
#
# As mentioned above, shared state files are prebuilt cache data objects which can 
# used to accelerate build time. This variable can be used to configure the system
# to search other mirror locations for these objects before it builds the data itself.
#
# This can be a filesystem directory, or a remote url such as http or ftp. These
# would contain the sstate-cache results from previous builds (possibly from other 
# machines). This variable works like fetcher MIRRORS/PREMIRRORS and points to the 
# cache locations to check for the shared objects.
# NOTE: if the mirror uses the same structure as SSTATE_DIR, you need to add PATH
# at the end as shown in the examples below. This will be substituted with the
# correct path within the directory structure.
#SSTATE_MIRRORS ?= "\
#file://.* http://someserver.tld/share/sstate/PATH;downloadfilename=PATH \n \
#file://.* file:///some/local/dir/sstate/PATH"

# CONF_VERSION is increased each time build/conf/ changes incompatibly and is used to
# track the version of this file when it was generated. This can safely be ignored if
# this doesn't mean anything to you.
CONF_VERSION = "1"

--------------080004040102050108060902
Content-Type: text/plain; charset=UTF-8;
 name="log.do_install.7940"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="log.do_install.7940"

DEBUG: Executing shell function do_install
NOTE: make -j 8 BINDIR=3D/home/markus/yocto/genericx86-64-dora-10.0.0/build=
/tmp/sysroots/x86_64-linux/usr/bin SBINDIR=3D/home/markus/yocto/genericx86-=
64-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/sbin LIBDIR=3D/home/mark=
us/yocto/genericx86-64-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/lib =
DATADIR=3D/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/sysroots/x=
86_64-linux/usr/share MANDIR=3D/home/markus/yocto/genericx86-64-dora-10.0.0=
/build/tmp/sysroots/x86_64-linux/usr/share/man INCDIR=3D/home/markus/yocto/=
genericx86-64-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/include insta=
ll INSTALLROOT=3D/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/image firmware=3Dbios
make -r -C /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_=
64-linux/syslinux-native/6.01-r0/syslinux-6.01 -f /home/markus/yocto/generi=
cx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/sys=
linux-6.01/Makefile SRC=3D"/home/markus/yocto/genericx86-64-dora-10.0.0/bui=
ld/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01" \
		OBJ=3D/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-=
linux/syslinux-native/6.01-r0/syslinux-6.01 objdir=3D/home/markus/yocto/gen=
ericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/=
syslinux-6.01 install
make[1]: Entering directory `/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01'
make -r -r -C /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x=
86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios -f /home/markus/yoct=
o/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.0=
1-r0/syslinux-6.01/Makefile SRC=3D"/home/markus/yocto/genericx86-64-dora-10=
.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01" \
		objdir=3D/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_=
64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios OBJ=3D/home/markus/yoct=
o/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.0=
1-r0/syslinux-6.01/bios HAVE_FIRMWARE=3D1 \
		ARCH=3Di386 LDLINUX=3Dldlinux.c32 install
make[2]: Entering directory `/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios'
set -e; for i in libinstaller mtools linux extlinux utils; \
		do make -r -r -r -C $i SRC=3D"/home/markus/yocto/genericx86-64-dora-10.0.=
0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/$i" OBJ=
=3D"/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linu=
x/syslinux-native/6.01-r0/syslinux-6.01/bios/$i" \
		-f /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-lin=
ux/syslinux-native/6.01-r0/syslinux-6.01/$i/Makefile all; done
make[3]: Entering directory `/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/libin=
staller'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/libins=
taller'
make[3]: Entering directory `/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/mtool=
s'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/mtools=
'
make[3]: Entering directory `/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/linux=
'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/linux'
make[3]: Entering directory `/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/extli=
nux'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/extlin=
ux'
make[3]: Entering directory `/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/utils=
'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/utils'
mkdir -m 755 -p /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work=
/x86_64-linux/syslinux-native/6.01-r0/image/home/markus/yocto/genericx86-64=
-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/bin
install -m 755 -c mtools/syslinux /home/markus/yocto/genericx86-64-dora-10.=
0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/image/home/markus/y=
octo/genericx86-64-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/bin
mkdir -m 755 -p /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work=
/x86_64-linux/syslinux-native/6.01-r0/image/home/markus/yocto/genericx86-64=
-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/sbin
install -m 755 -c extlinux/extlinux /home/markus/yocto/genericx86-64-dora-1=
0.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/image/home/markus=
/yocto/genericx86-64-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/sbin
mkdir -m 755 -p /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work=
/x86_64-linux/syslinux-native/6.01-r0/image/home/markus/yocto/genericx86-64=
-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/share/syslinux
install -m 644 -c core/pxelinux.0 gpxe/gpxelinux.0 gpxe/gpxelinuxk.0 core/i=
solinux.bin core/isolinux-debug.bin dos/syslinux.com core/lpxelinux.0 mbr/*=
.bin memdisk/memdisk memdump/memdump.com com32/menu/*.c32 com32/modules/*.c=
32 com32/mboot/*.c32 com32/hdt/*.c32 com32/rosh/*.c32 com32/gfxboot/*.c32 c=
om32/sysdump/*.c32 com32/lua/src/*.c32 com32/chain/*.c32 com32/lib/*.c32 co=
m32/libutil/*.c32 com32/gpllib/*.c32 com32/elflink/ldlinux/*.c32 com32/cmen=
u/libmenu/*.c32 /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work=
/x86_64-linux/syslinux-native/6.01-r0/image/home/markus/yocto/genericx86-64=
-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/share/syslinux
install -m 644 -c win64/syslinux64.exe /home/markus/yocto/genericx86-64-dor=
a-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/image/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/sha=
re/syslinux
mkdir -m 755 -p /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work=
/x86_64-linux/syslinux-native/6.01-r0/image/home/markus/yocto/genericx86-64=
-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/share/syslinux/diag
install -m 644 -c diag/mbr/handoff.bin diag/geodsp/geodsp1s.img.xz diag/geo=
dsp/geodspms.img.xz /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/=
work/x86_64-linux/syslinux-native/6.01-r0/image/home/markus/yocto/genericx8=
6-64-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/share/syslinux/diag
mkdir -m 755 -p /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work=
/x86_64-linux/syslinux-native/6.01-r0/image/home/markus/yocto/genericx86-64=
-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/share/man/man1
install -m 644 -c /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wo=
rk/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/man/*.1 /home/markus/=
yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native=
/6.01-r0/image/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/sysroo=
ts/x86_64-linux/usr/share/man/man1
: mkdir -m 755 -p /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wo=
rk/x86_64-linux/syslinux-native/6.01-r0/image/home/markus/yocto/genericx86-=
64-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/share/man/man8
: install -m 644 -c man/*.8 /home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/image/home/markus/yocto/g=
enericx86-64-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/share/man/man8
set -e ; for i in com32 utils dosutil ; \
		do make -r -r -r -C $i SRC=3D"/home/markus/yocto/genericx86-64-dora-10.0.=
0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/$i" OBJ=
=3D"/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linu=
x/syslinux-native/6.01-r0/syslinux-6.01/bios/$i" \
		-f /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-lin=
ux/syslinux-native/6.01-r0/syslinux-6.01/$i/Makefile install; done
make[3]: Entering directory `/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32=
'
make -r -r -r -C /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32/libupload S=
RC=3D"/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-li=
nux/syslinux-native/6.01-r0/syslinux-6.01/com32"/libupload OBJ=3D"/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na=
tive/6.01-r0/syslinux-6.01/bios/com32"/libupload/ \
		-f /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-lin=
ux/syslinux-native/6.01-r0/syslinux-6.01/com32/libupload/Makefile install
make -r -r -r -C /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32/tools SRC=
=3D"/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linu=
x/syslinux-native/6.01-r0/syslinux-6.01/com32"/tools OBJ=3D"/home/markus/yo=
cto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6=
.01-r0/syslinux-6.01/bios/com32"/tools/ \
		-f /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-lin=
ux/syslinux-native/6.01-r0/syslinux-6.01/com32/tools/Makefile install
make -r -r -r -C /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32/lib SRC=3D"=
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32"/lib OBJ=3D"/home/markus/yocto/ge=
nericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0=
/syslinux-6.01/bios/com32"/lib/ \
		-f /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-lin=
ux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib/Makefile install
make[4]: Entering directory `/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32=
/tools'
make[4]: Nothing to be done for `install'.
make[4]: Leaving directory `/home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32/=
tools'
make -r -r -r -C /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32/gpllib SRC=
=3D"/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linu=
x/syslinux-native/6.01-r0/syslinux-6.01/com32"/gpllib OBJ=3D"/home/markus/y=
octo/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/=
6.01-r0/syslinux-6.01/bios/com32"/gpllib/ \
		-f /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-lin=
ux/syslinux-native/6.01-r0/syslinux-6.01/com32/gpllib/Makefile install
make -r -r -r -C /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32/libutil SRC=
=3D"/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linu=
x/syslinux-native/6.01-r0/syslinux-6.01/com32"/libutil OBJ=3D"/home/markus/=
yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native=
/6.01-r0/syslinux-6.01/bios/com32"/libutil/ \
		-f /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-lin=
ux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/Makefile install
make -r -r -r -C /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32/elflink SRC=
=3D"/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linu=
x/syslinux-native/6.01-r0/syslinux-6.01/com32"/elflink OBJ=3D"/home/markus/=
yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native=
/6.01-r0/syslinux-6.01/bios/com32"/elflink/ \
		-f /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-lin=
ux/syslinux-native/6.01-r0/syslinux-6.01/com32/elflink/Makefile install
make[4]: Entering directory `/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32=
/elflink'
make[4]: Nothing to be done for `install'.
make[4]: Leaving directory `/home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32/=
elflink'
make[4]: Entering directory `/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32=
/gpllib'
gcc -Wp,-MT,cpuid.o,-MD,./.cpuid.o.d -Os -march=3Di386 -falign-functions=3D=
0 -falign-jumps=3D0 -falign-labels=3D0 -ffast-math -fomit-frame-pointer -st=
d=3Dgnu99   -fno-stack-protector -fwrapv -freg-struct-return -fPIC -fno-exc=
eptions -fno-asynchronous-unwind-tables -fno-strict-aliasing -falign-functi=
ons=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 -g -D__COM32=
__ -nostdinc -iwithprefix include -I. -I/home/markus/yocto/genericx86-64-do=
ra-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01=
/com32/gpllib/sys -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/=
work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/gpllib/../inc=
lude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-l=
inux/syslinux-native/6.01-r0/syslinux-6.01/com32/include/sys -I/home/markus=
/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-nativ=
e/6.01-r0/syslinux-6.01/core/include -I/home/markus/yocto/genericx86-64-dor=
a-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/=
com32/lib/ -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x8=
6_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib/sys/module -I/ho=
me/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sysli=
nux-native/6.01-r0/syslinux-6.01/bios/com32/gpllib//../.. -I/home/markus/yo=
cto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6=
.01-r0/syslinux-6.01/com32/gpllib/../gplinclude -I/home/markus/yocto/generi=
cx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/sys=
linux-6.01/com32/gpllib/../gplinclude/zzjson -W -Wall -Wstrict-prototypes  =
-Wpointer-arith -Wwrite-strings -Wstrict-prototypes -Winline -DDYNAMIC_CRC_=
TABLE -DPNG_NO_CONSOLE_IO -DPNG_NO_WRITE_SUPPORTED -DPNG_NO_MNG_FEATURES -D=
PNG_NO_READ_tIME -DPNG_NO_WRITE_tIME -mregparm=3D3 -DREGPARM=3D3 -c -o cpui=
d.o /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linu=
x/syslinux-native/6.01-r0/syslinux-6.01/com32/gpllib/cpuid.c
gcc -Wp,-MT,memory.o,-MD,./.memory.o.d -Os -march=3Di386 -falign-functions=
=3D0 -falign-jumps=3D0 -falign-labels=3D0 -ffast-math -fomit-frame-pointer =
-std=3Dgnu99   -fno-stack-protector -fwrapv -freg-struct-return -fPIC -fno-=
exceptions -fno-asynchronous-unwind-tables -fno-strict-aliasing -falign-fun=
ctions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 -g -D__CO=
M32__ -nostdinc -iwithprefix include -I. -I/home/markus/yocto/genericx86-64=
-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6=
.01/com32/gpllib/sys -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/t=
mp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/gpllib/../=
include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_6=
4-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/include/sys -I/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na=
tive/6.01-r0/syslinux-6.01/core/include -I/home/markus/yocto/genericx86-64-=
dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.=
01/com32/lib/ -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work=
/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib/sys/module -I=
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/bios/com32/gpllib//../.. -I/home/markus=
/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-nativ=
e/6.01-r0/syslinux-6.01/com32/gpllib/../gplinclude -I/home/markus/yocto/gen=
ericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/=
syslinux-6.01/com32/gpllib/../gplinclude/zzjson -W -Wall -Wstrict-prototype=
s  -Wpointer-arith -Wwrite-strings -Wstrict-prototypes -Winline -DDYNAMIC_C=
RC_TABLE -DPNG_NO_CONSOLE_IO -DPNG_NO_WRITE_SUPPORTED -DPNG_NO_MNG_FEATURES=
 -DPNG_NO_READ_tIME -DPNG_NO_WRITE_tIME -mregparm=3D3 -DREGPARM=3D3 -c -o m=
emory.o /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-=
linux/syslinux-native/6.01-r0/syslinux-6.01/com32/gpllib/memory.c
gcc -Wp,-MT,disk/ata.o,-MD,disk/.ata.o.d -Os -march=3Di386 -falign-function=
s=3D0 -falign-jumps=3D0 -falign-labels=3D0 -ffast-math -fomit-frame-pointer=
 -std=3Dgnu99   -fno-stack-protector -fwrapv -freg-struct-return -fPIC -fno=
-exceptions -fno-asynchronous-unwind-tables -fno-strict-aliasing -falign-fu=
nctions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 -g -D__C=
OM32__ -nostdinc -iwithprefix include -I. -I/home/markus/yocto/genericx86-6=
4-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-=
6.01/com32/gpllib/sys -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/=
tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/gpllib/..=
/include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_=
64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/include/sys -I/home/ma=
rkus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-n=
ative/6.01-r0/syslinux-6.01/core/include -I/home/markus/yocto/genericx86-64=
-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6=
.01/com32/lib/ -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib/sys/module -=
I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/s=
yslinux-native/6.01-r0/syslinux-6.01/bios/com32/gpllib//../.. -I/home/marku=
s/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-nati=
ve/6.01-r0/syslinux-6.01/com32/gpllib/../gplinclude -I/home/markus/yocto/ge=
nericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0=
/syslinux-6.01/com32/gpllib/../gplinclude/zzjson -W -Wall -Wstrict-prototyp=
es  -Wpointer-arith -Wwrite-strings -Wstrict-prototypes -Winline -DDYNAMIC_=
CRC_TABLE -DPNG_NO_CONSOLE_IO -DPNG_NO_WRITE_SUPPORTED -DPNG_NO_MNG_FEATURE=
S -DPNG_NO_READ_tIME -DPNG_NO_WRITE_tIME -mregparm=3D3 -DREGPARM=3D3 -c -o =
disk/ata.o /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_=
64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/gpllib/disk/ata.c
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/gpllib/cpuid.c:1:0: error: CPU yo=
u selected does not support x86-64 instruction set
 /*
 ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/gpllib/cpuid.c:1:0: error: CPU yo=
u selected does not support x86-64 instruction set
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/gpllib/cpuid.c:1:0: warning: -mre=
gparm is ignored in 64-bit mode [enabled by default]
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/gpllib/memory.c:1:0: error: CPU y=
ou selected does not support x86-64 instruction set
 /* -----------------------------------------------------------------------=
 *
 ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/gpllib/memory.c:1:0: error: CPU y=
ou selected does not support x86-64 instruction set
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/gpllib/memory.c:1:0: warning: -mr=
egparm is ignored in 64-bit mode [enabled by default]
make[4]: *** [cpuid.o] Error 1
make[4]: *** Waiting for unfinished jobs....
make[4]: *** [memory.o] Error 1
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/gpllib/disk/ata.c:1:0: error: CPU=
 you selected does not support x86-64 instruction set
 #include <inttypes.h>
 ^
make[4]: Entering directory `/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32=
/lib'
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/gpllib/disk/ata.c:1:0: error: CPU=
 you selected does not support x86-64 instruction set
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/gpllib/disk/ata.c:1:0: warning: -=
mregparm is ignored in 64-bit mode [enabled by default]
make[4]: *** [disk/ata.o] Error 1
make[4]: Leaving directory `/home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32/=
gpllib'
make[3]: *** [gpllib] Error 2
make[3]: *** Waiting for unfinished jobs....
gcc -Wp,-MT,zlib/adler32.o,-MD,zlib/.adler32.o.d -Os -march=3Di386 -falign-=
functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -ffast-math -fomit-frame=
-pointer -std=3Dgnu99   -fno-stack-protector -fwrapv -freg-struct-return -f=
PIC -fno-exceptions -fno-asynchronous-unwind-tables -fno-strict-aliasing -f=
align-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 =
-g -D__COM32__ -nostdinc -iwithprefix include -I. -I/home/markus/yocto/gene=
ricx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/s=
yslinux-6.01/com32/lib/sys -I/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib/=
../include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x8=
6_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/include/sys -I/home/=
markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux=
-native/6.01-r0/syslinux-6.01/core/include -I/home/markus/yocto/genericx86-=
64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux=
-6.01/com32/lib/ -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/w=
ork/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib/sys/module=
 -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux=
/syslinux-native/6.01-r0/syslinux-6.01/bios/com32/lib//../.. -W -Wall -Wstr=
ict-prototypes  -Wpointer-arith -Wwrite-strings -Wstrict-prototypes -Winlin=
e -DDYNAMIC_CRC_TABLE -DPNG_NO_CONSOLE_IO -DPNG_NO_WRITE_SUPPORTED -DPNG_NO=
_MNG_FEATURES -DPNG_NO_READ_tIME -DPNG_NO_WRITE_tIME -mregparm=3D3 -DREGPAR=
M=3D3 -c -o zlib/adler32.o /home/markus/yocto/genericx86-64-dora-10.0.0/bui=
ld/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib/zl=
ib/adler32.c
gcc -Wp,-MT,zlib/compress.o,-MD,zlib/.compress.o.d -Os -march=3Di386 -falig=
n-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -ffast-math -fomit-fra=
me-pointer -std=3Dgnu99   -fno-stack-protector -fwrapv -freg-struct-return =
-fPIC -fno-exceptions -fno-asynchronous-unwind-tables -fno-strict-aliasing =
-falign-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D=
0 -g -D__COM32__ -nostdinc -iwithprefix include -I. -I/home/markus/yocto/ge=
nericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0=
/syslinux-6.01/com32/lib/sys -I/home/markus/yocto/genericx86-64-dora-10.0.0=
/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/li=
b/../include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/=
x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/include/sys -I/hom=
e/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslin=
ux-native/6.01-r0/syslinux-6.01/core/include -I/home/markus/yocto/genericx8=
6-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslin=
ux-6.01/com32/lib/ -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp=
/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib/sys/modu=
le -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-lin=
ux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32/lib//../.. -W -Wall -Ws=
trict-prototypes  -Wpointer-arith -Wwrite-strings -Wstrict-prototypes -Winl=
ine -DDYNAMIC_CRC_TABLE -DPNG_NO_CONSOLE_IO -DPNG_NO_WRITE_SUPPORTED -DPNG_=
NO_MNG_FEATURES -DPNG_NO_READ_tIME -DPNG_NO_WRITE_tIME -mregparm=3D3 -DREGP=
ARM=3D3 -c -o zlib/compress.o /home/markus/yocto/genericx86-64-dora-10.0.0/=
build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib=
/zlib/compress.c
gcc -Wp,-MT,zlib/crc32.o,-MD,zlib/.crc32.o.d -Os -march=3Di386 -falign-func=
tions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -ffast-math -fomit-frame-poi=
nter -std=3Dgnu99   -fno-stack-protector -fwrapv -freg-struct-return -fPIC =
-fno-exceptions -fno-asynchronous-unwind-tables -fno-strict-aliasing -falig=
n-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 -g -=
D__COM32__ -nostdinc -iwithprefix include -I. -I/home/markus/yocto/genericx=
86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/sysli=
nux-6.01/com32/lib/sys -I/home/markus/yocto/genericx86-64-dora-10.0.0/build=
/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib/../i=
nclude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64=
-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/include/sys -I/home/mark=
us/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-nat=
ive/6.01-r0/syslinux-6.01/core/include -I/home/markus/yocto/genericx86-64-d=
ora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.0=
1/com32/lib/ -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/=
x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib/sys/module -I/=
home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sys=
linux-native/6.01-r0/syslinux-6.01/bios/com32/lib//../.. -W -Wall -Wstrict-=
prototypes  -Wpointer-arith -Wwrite-strings -Wstrict-prototypes -Winline -D=
DYNAMIC_CRC_TABLE -DPNG_NO_CONSOLE_IO -DPNG_NO_WRITE_SUPPORTED -DPNG_NO_MNG=
_FEATURES -DPNG_NO_READ_tIME -DPNG_NO_WRITE_tIME -mregparm=3D3 -DREGPARM=3D=
3 -c -o zlib/crc32.o /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp=
/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib/zlib/crc=
32.c
make[4]: Entering directory `/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32=
/libutil'
gcc -std=3Dgnu99    -Os -fomit-frame-pointer -fno-stack-protector -fwrapv -=
freg-struct-return -fno-exceptions -fno-asynchronous-unwind-tables -fPIC -f=
align-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 =
-W -Wall -fomit-frame-pointer -D__COM32__ -DDYNAMIC_MODULE -nostdinc -iwith=
prefix include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include =
-I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/=
syslinux-native/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yocto/ge=
nericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0=
/syslinux-6.01/com32/include/sys -I/home/markus/yocto/genericx86-64-dora-10=
.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com3=
2/gplinclude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/=
x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/core/include -I/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na=
tive/6.01-r0/syslinux-6.01/bios -DLDLINUX=3D\"ldlinux.c32\" -mregparm=3D3 -=
DREGPARM=3D3 -c -o ansiline.o /home/markus/yocto/genericx86-64-dora-10.0.0/=
build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib=
util/ansiline.c
gcc -std=3Dgnu99    -Os -fomit-frame-pointer -fno-stack-protector -fwrapv -=
freg-struct-return -fno-exceptions -fno-asynchronous-unwind-tables -fPIC -f=
align-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 =
-W -Wall -fomit-frame-pointer -D__COM32__ -DDYNAMIC_MODULE -nostdinc -iwith=
prefix include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include =
-I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/=
syslinux-native/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yocto/ge=
nericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0=
/syslinux-6.01/com32/include/sys -I/home/markus/yocto/genericx86-64-dora-10=
.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com3=
2/gplinclude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/=
x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/core/include -I/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na=
tive/6.01-r0/syslinux-6.01/bios -DLDLINUX=3D\"ldlinux.c32\" -mregparm=3D3 -=
DREGPARM=3D3 -c -o ansiraw.o /home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libu=
til/ansiraw.c
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/lib/zlib/adler32.c:1:0: error: CP=
U you selected does not support x86-64 instruction set
 /* adler32.c -- compute the Adler-32 checksum of a data stream
 ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/lib/zlib/adler32.c:1:0: error: CP=
U you selected does not support x86-64 instruction set
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/lib/zlib/adler32.c:1:0: warning: =
-mregparm is ignored in 64-bit mode [enabled by default]
gcc -Wp,-MT,zlib/uncompr.o,-MD,zlib/.uncompr.o.d -Os -march=3Di386 -falign-=
functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -ffast-math -fomit-frame=
-pointer -std=3Dgnu99   -fno-stack-protector -fwrapv -freg-struct-return -f=
PIC -fno-exceptions -fno-asynchronous-unwind-tables -fno-strict-aliasing -f=
align-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 =
-g -D__COM32__ -nostdinc -iwithprefix include -I. -I/home/markus/yocto/gene=
ricx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/s=
yslinux-6.01/com32/lib/sys -I/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib/=
../include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x8=
6_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/include/sys -I/home/=
markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux=
-native/6.01-r0/syslinux-6.01/core/include -I/home/markus/yocto/genericx86-=
64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux=
-6.01/com32/lib/ -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/w=
ork/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib/sys/module=
 -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux=
/syslinux-native/6.01-r0/syslinux-6.01/bios/com32/lib//../.. -W -Wall -Wstr=
ict-prototypes  -Wpointer-arith -Wwrite-strings -Wstrict-prototypes -Winlin=
e -DDYNAMIC_CRC_TABLE -DPNG_NO_CONSOLE_IO -DPNG_NO_WRITE_SUPPORTED -DPNG_NO=
_MNG_FEATURES -DPNG_NO_READ_tIME -DPNG_NO_WRITE_tIME -mregparm=3D3 -DREGPAR=
M=3D3 -c -o zlib/uncompr.o /home/markus/yocto/genericx86-64-dora-10.0.0/bui=
ld/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib/zl=
ib/uncompr.c
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/lib/zlib/compress.c:1:0: error: C=
PU you selected does not support x86-64 instruction set
 /* compress.c -- compress a memory buffer
 ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/lib/zlib/compress.c:1:0: error: C=
PU you selected does not support x86-64 instruction set
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/lib/zlib/compress.c:1:0: warning:=
 -mregparm is ignored in 64-bit mode [enabled by default]
make[4]: *** [zlib/adler32.o] Error 1
make[4]: *** Waiting for unfinished jobs....
make[4]: *** [zlib/compress.o] Error 1
gcc -std=3Dgnu99    -Os -fomit-frame-pointer -fno-stack-protector -fwrapv -=
freg-struct-return -fno-exceptions -fno-asynchronous-unwind-tables -fPIC -f=
align-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 =
-W -Wall -fomit-frame-pointer -D__COM32__ -DDYNAMIC_MODULE -nostdinc -iwith=
prefix include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include =
-I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/=
syslinux-native/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yocto/ge=
nericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0=
/syslinux-6.01/com32/include/sys -I/home/markus/yocto/genericx86-64-dora-10=
.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com3=
2/gplinclude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/=
x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/core/include -I/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na=
tive/6.01-r0/syslinux-6.01/bios -DLDLINUX=3D\"ldlinux.c32\" -mregparm=3D3 -=
DREGPARM=3D3 -c -o keyname.o /home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libu=
til/keyname.c
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/ansiline.c:1:0: warning: =
-mregparm is ignored in 64-bit mode [enabled by default]
 /* -----------------------------------------------------------------------=
 *
 ^
gcc -std=3Dgnu99    -Os -fomit-frame-pointer -fno-stack-protector -fwrapv -=
freg-struct-return -fno-exceptions -fno-asynchronous-unwind-tables -fPIC -f=
align-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 =
-W -Wall -fomit-frame-pointer -D__COM32__ -DDYNAMIC_MODULE -nostdinc -iwith=
prefix include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include =
-I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/=
syslinux-native/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yocto/ge=
nericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0=
/syslinux-6.01/com32/include/sys -I/home/markus/yocto/genericx86-64-dora-10=
.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com3=
2/gplinclude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/=
x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/core/include -I/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na=
tive/6.01-r0/syslinux-6.01/bios -DLDLINUX=3D\"ldlinux.c32\" -mregparm=3D3 -=
DREGPARM=3D3 -c -o sha1hash.o /home/markus/yocto/genericx86-64-dora-10.0.0/=
build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib=
util/sha1hash.c
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/keyname.c:1:0: warning: -=
mregparm is ignored in 64-bit mode [enabled by default]
 /* -----------------------------------------------------------------------=
 *
 ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/lib/zlib/uncompr.c:1:0: error: CP=
U you selected does not support x86-64 instruction set
 /* uncompr.c -- decompress a memory buffer
 ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/lib/zlib/uncompr.c:1:0: error: CP=
U you selected does not support x86-64 instruction set
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/lib/zlib/uncompr.c:1:0: warning: =
-mregparm is ignored in 64-bit mode [enabled by default]
make[4]: *** [zlib/uncompr.o] Error 1
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/lib/zlib/crc32.c:1:0: error: CPU =
you selected does not support x86-64 instruction set
 /* crc32.c -- compute the CRC-32 of a data stream
 ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/lib/zlib/crc32.c:1:0: error: CPU =
you selected does not support x86-64 instruction set
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/lib/zlib/crc32.c:1:0: warning: -m=
regparm is ignored in 64-bit mode [enabled by default]
make[4]: *** [zlib/crc32.o] Error 1
make[4]: Leaving directory `/home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32/=
lib'
make[3]: *** [lib] Error 2
gcc -std=3Dgnu99    -Os -fomit-frame-pointer -fno-stack-protector -fwrapv -=
freg-struct-return -fno-exceptions -fno-asynchronous-unwind-tables -fPIC -f=
align-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 =
-W -Wall -fomit-frame-pointer -D__COM32__ -DDYNAMIC_MODULE -nostdinc -iwith=
prefix include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include =
-I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/=
syslinux-native/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yocto/ge=
nericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0=
/syslinux-6.01/com32/include/sys -I/home/markus/yocto/genericx86-64-dora-10=
.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com3=
2/gplinclude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/=
x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/core/include -I/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na=
tive/6.01-r0/syslinux-6.01/bios -DLDLINUX=3D\"ldlinux.c32\" -mregparm=3D3 -=
DREGPARM=3D3 -c -o unbase64.o /home/markus/yocto/genericx86-64-dora-10.0.0/=
build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/lib=
util/unbase64.c
gcc -std=3Dgnu99    -Os -fomit-frame-pointer -fno-stack-protector -fwrapv -=
freg-struct-return -fno-exceptions -fno-asynchronous-unwind-tables -fPIC -f=
align-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 =
-W -Wall -fomit-frame-pointer -D__COM32__ -DDYNAMIC_MODULE -nostdinc -iwith=
prefix include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include =
-I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/=
syslinux-native/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yocto/ge=
nericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0=
/syslinux-6.01/com32/include/sys -I/home/markus/yocto/genericx86-64-dora-10=
.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com3=
2/gplinclude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/=
x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/core/include -I/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na=
tive/6.01-r0/syslinux-6.01/bios -DLDLINUX=3D\"ldlinux.c32\" -mregparm=3D3 -=
DREGPARM=3D3 -c -o md5.o /home/markus/yocto/genericx86-64-dora-10.0.0/build=
/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/=
md5.c
gcc -std=3Dgnu99    -Os -fomit-frame-pointer -fno-stack-protector -fwrapv -=
freg-struct-return -fno-exceptions -fno-asynchronous-unwind-tables -fPIC -f=
align-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 =
-W -Wall -fomit-frame-pointer -D__COM32__ -DDYNAMIC_MODULE -nostdinc -iwith=
prefix include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include =
-I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/=
syslinux-native/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yocto/ge=
nericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0=
/syslinux-6.01/com32/include/sys -I/home/markus/yocto/genericx86-64-dora-10=
.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com3=
2/gplinclude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/=
x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/core/include -I/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na=
tive/6.01-r0/syslinux-6.01/bios -DLDLINUX=3D\"ldlinux.c32\" -mregparm=3D3 -=
DREGPARM=3D3 -c -o crypt-md5.o /home/markus/yocto/genericx86-64-dora-10.0.0=
/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/li=
butil/crypt-md5.c
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/ansiraw.c:1:0: warning: -=
mregparm is ignored in 64-bit mode [enabled by default]
 /* -----------------------------------------------------------------------=
 *
 ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/md5.c:1:0: warning: -mreg=
parm is ignored in 64-bit mode [enabled by default]
 /*
 ^
gcc -std=3Dgnu99    -Os -fomit-frame-pointer -fno-stack-protector -fwrapv -=
freg-struct-return -fno-exceptions -fno-asynchronous-unwind-tables -fPIC -f=
align-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 =
-W -Wall -fomit-frame-pointer -D__COM32__ -DDYNAMIC_MODULE -nostdinc -iwith=
prefix include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include =
-I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/=
syslinux-native/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yocto/ge=
nericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0=
/syslinux-6.01/com32/include/sys -I/home/markus/yocto/genericx86-64-dora-10=
.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com3=
2/gplinclude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/=
x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/core/include -I/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na=
tive/6.01-r0/syslinux-6.01/bios -DLDLINUX=3D\"ldlinux.c32\" -mregparm=3D3 -=
DREGPARM=3D3 -c -o sha256crypt.o /home/markus/yocto/genericx86-64-dora-10.0=
.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/=
libutil/sha256crypt.c
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/sha1hash.c:1:0: warning: =
-mregparm is ignored in 64-bit mode [enabled by default]
 /*
 ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/unbase64.c:1:0: warning: =
-mregparm is ignored in 64-bit mode [enabled by default]
 /* -----------------------------------------------------------------------=
 *
 ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/crypt-md5.c:1:0: warning:=
 -mregparm is ignored in 64-bit mode [enabled by default]
 /*-
 ^
gcc -std=3Dgnu99    -Os -fomit-frame-pointer -fno-stack-protector -fwrapv -=
freg-struct-return -fno-exceptions -fno-asynchronous-unwind-tables -fPIC -f=
align-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 =
-W -Wall -fomit-frame-pointer -D__COM32__ -DDYNAMIC_MODULE -nostdinc -iwith=
prefix include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include =
-I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/=
syslinux-native/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yocto/ge=
nericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0=
/syslinux-6.01/com32/include/sys -I/home/markus/yocto/genericx86-64-dora-10=
.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com3=
2/gplinclude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/=
x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/core/include -I/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na=
tive/6.01-r0/syslinux-6.01/bios -DLDLINUX=3D\"ldlinux.c32\" -mregparm=3D3 -=
DREGPARM=3D3 -c -o sha512crypt.o /home/markus/yocto/genericx86-64-dora-10.0=
.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/=
libutil/sha512crypt.c
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/sha256crypt.c:1:0: warnin=
g: -mregparm is ignored in 64-bit mode [enabled by default]
 /* SHA256-based Unix crypt implementation.
 ^
gcc -std=3Dgnu99    -Os -fomit-frame-pointer -fno-stack-protector -fwrapv -=
freg-struct-return -fno-exceptions -fno-asynchronous-unwind-tables -fPIC -f=
align-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 =
-W -Wall -fomit-frame-pointer -D__COM32__ -DDYNAMIC_MODULE -nostdinc -iwith=
prefix include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include =
-I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/=
syslinux-native/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yocto/ge=
nericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0=
/syslinux-6.01/com32/include/sys -I/home/markus/yocto/genericx86-64-dora-10=
.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com3=
2/gplinclude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/=
x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/core/include -I/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na=
tive/6.01-r0/syslinux-6.01/bios -DLDLINUX=3D\"ldlinux.c32\" -mregparm=3D3 -=
DREGPARM=3D3 -c -o base64.o /home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libut=
il/base64.c
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/sha256crypt.c: In functio=
n 'sha256_finish_ctx':
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/sha256crypt.c:196:5: warn=
ing: dereferencing type-punned pointer will break strict-aliasing rules [-W=
strict-aliasing]
     *(uint32_t *) & ctx->buffer[bytes + pad + 4] =3D SWAP(ctx->total[0] <<=
 3);
     ^
gcc -std=3Dgnu99    -Os -fomit-frame-pointer -fno-stack-protector -fwrapv -=
freg-struct-return -fno-exceptions -fno-asynchronous-unwind-tables -fPIC -f=
align-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 =
-W -Wall -fomit-frame-pointer -D__COM32__ -DDYNAMIC_MODULE -nostdinc -iwith=
prefix include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wor=
k/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include =
-I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/=
syslinux-native/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yocto/ge=
nericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0=
/syslinux-6.01/com32/include/sys -I/home/markus/yocto/genericx86-64-dora-10=
.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com3=
2/gplinclude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/=
x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/core/include -I/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na=
tive/6.01-r0/syslinux-6.01/bios -DLDLINUX=3D\"ldlinux.c32\" -mregparm=3D3 -=
DREGPARM=3D3 -c -o quicksort.o /home/markus/yocto/genericx86-64-dora-10.0.0=
/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/li=
butil/quicksort.c
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/sha256crypt.c:197:5: warn=
ing: dereferencing type-punned pointer will break strict-aliasing rules [-W=
strict-aliasing]
     *(uint32_t *) & ctx->buffer[bytes + pad] =3D SWAP((ctx->total[1] << 3)=
 |
     ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/base64.c:1:0: warning: -m=
regparm is ignored in 64-bit mode [enabled by default]
 /*
 ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/sha512crypt.c:1:0: warnin=
g: -mregparm is ignored in 64-bit mode [enabled by default]
 /* SHA512-based Unix crypt implementation.
 ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/sha512crypt.c: In functio=
n 'sha512_finish_ctx':
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/sha512crypt.c:227:5: warn=
ing: dereferencing type-punned pointer will break strict-aliasing rules [-W=
strict-aliasing]
     *(uint64_t *) & ctx->buffer[bytes + pad + 8] =3D SWAP(ctx->total[0] <<=
 3);
     ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/sha512crypt.c:228:5: warn=
ing: dereferencing type-punned pointer will break strict-aliasing rules [-W=
strict-aliasing]
     *(uint64_t *) & ctx->buffer[bytes + pad] =3D SWAP((ctx->total[1] << 3)=
 |
     ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libutil/quicksort.c:1:0: warning:=
 -mregparm is ignored in 64-bit mode [enabled by default]
 /*
 ^
gcc -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-li=
nux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include -W -Wall -O=
 -g -D_GNU_SOURCE -c -o ansiline.lo /home/markus/yocto/genericx86-64-dora-1=
0.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com=
32/libutil/ansiline.c
gcc -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-li=
nux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include -W -Wall -O=
 -g -D_GNU_SOURCE -c -o ansiraw.lo /home/markus/yocto/genericx86-64-dora-10=
.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com3=
2/libutil/ansiraw.c
gcc -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-li=
nux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include -W -Wall -O=
 -g -D_GNU_SOURCE -c -o keyname.lo /home/markus/yocto/genericx86-64-dora-10=
.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com3=
2/libutil/keyname.c
make[4]: Entering directory `/home/markus/yocto/genericx86-64-dora-10.0.0/b=
uild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32=
/libupload'
gcc -Wp,-MT,cpio.o,-MD,./.cpio.o.d -std=3Dgnu99     -fno-stack-protector -f=
wrapv -freg-struct-return -Os -fPIC -fno-exceptions -fno-asynchronous-unwin=
d-tables -fno-strict-aliasing -falign-functions=3D0 -falign-jumps=3D0 -fali=
gn-labels=3D0 -falign-loops=3D0 -mregparm=3D3 -DREGPARM=3D3 -W -Wall -Wstri=
ct-prototypes  -fomit-frame-pointer -D__COM32__ -nostdinc -iwithprefix incl=
ude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-li=
nux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include -I/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na=
tive/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yocto/genericx86-64=
-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6=
.01/com32/include/sys -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/=
tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/gplinclud=
e -c -o cpio.o /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/=
x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libupload/cpio.c
gcc -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-li=
nux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include -W -Wall -O=
 -g -D_GNU_SOURCE -c -o sha1hash.lo /home/markus/yocto/genericx86-64-dora-1=
0.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com=
32/libutil/sha1hash.c
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libupload/cpio.c:1:0: warning: -m=
regparm is ignored in 64-bit mode [enabled by default]
 /*
 ^
gcc -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-li=
nux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include -W -Wall -O=
 -g -D_GNU_SOURCE -c -o unbase64.lo /home/markus/yocto/genericx86-64-dora-1=
0.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com=
32/libutil/unbase64.c
gcc -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-li=
nux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include -W -Wall -O=
 -g -D_GNU_SOURCE -c -o md5.lo /home/markus/yocto/genericx86-64-dora-10.0.0=
/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/li=
butil/md5.c
gcc -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-li=
nux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include -W -Wall -O=
 -g -D_GNU_SOURCE -c -o crypt-md5.lo /home/markus/yocto/genericx86-64-dora-=
10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/co=
m32/libutil/crypt-md5.c
gcc -Wp,-MT,ctime.o,-MD,./.ctime.o.d -std=3Dgnu99     -fno-stack-protector =
-fwrapv -freg-struct-return -Os -fPIC -fno-exceptions -fno-asynchronous-unw=
ind-tables -fno-strict-aliasing -falign-functions=3D0 -falign-jumps=3D0 -fa=
lign-labels=3D0 -falign-loops=3D0 -mregparm=3D3 -DREGPARM=3D3 -W -Wall -Wst=
rict-prototypes  -fomit-frame-pointer -D__COM32__ -nostdinc -iwithprefix in=
clude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-=
linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include -I/home/m=
arkus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-=
native/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yocto/genericx86-=
64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux=
-6.01/com32/include/sys -I/home/markus/yocto/genericx86-64-dora-10.0.0/buil=
d/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/gplincl=
ude -c -o ctime.o /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/wo=
rk/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libupload/ctime=
.c
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libupload/ctime.c:1:0: warning: -=
mregparm is ignored in 64-bit mode [enabled by default]
 #include <com32.h>
 ^
gcc -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-li=
nux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include -W -Wall -O=
 -g -D_GNU_SOURCE -c -o sha256crypt.lo /home/markus/yocto/genericx86-64-dor=
a-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/=
com32/libutil/sha256crypt.c
gcc -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-li=
nux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include -W -Wall -O=
 -g -D_GNU_SOURCE -c -o sha512crypt.lo /home/markus/yocto/genericx86-64-dor=
a-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/=
com32/libutil/sha512crypt.c
gcc -Wp,-MT,serial.o,-MD,./.serial.o.d -std=3Dgnu99     -fno-stack-protecto=
r -fwrapv -freg-struct-return -Os -fPIC -fno-exceptions -fno-asynchronous-u=
nwind-tables -fno-strict-aliasing -falign-functions=3D0 -falign-jumps=3D0 -=
falign-labels=3D0 -falign-loops=3D0 -mregparm=3D3 -DREGPARM=3D3 -W -Wall -W=
strict-prototypes  -fomit-frame-pointer -D__COM32__ -nostdinc -iwithprefix =
include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_6=
4-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include -I/home=
/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinu=
x-native/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yocto/genericx8=
6-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslin=
ux-6.01/com32/include/sys -I/home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/gplin=
clude -c -o serial.o /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp=
/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libupload/se=
rial.c
gcc -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-li=
nux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include -W -Wall -O=
 -g -D_GNU_SOURCE -c -o base64.lo /home/markus/yocto/genericx86-64-dora-10.=
0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32=
/libutil/base64.c
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libupload/serial.c:1:0: warning: =
-mregparm is ignored in 64-bit mode [enabled by default]
 #include <stdbool.h>
 ^
gcc -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-li=
nux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include -W -Wall -O=
 -g -D_GNU_SOURCE -c -o quicksort.lo /home/markus/yocto/genericx86-64-dora-=
10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/co=
m32/libutil/quicksort.c
ld -m elf_i386 -shared --hash-style=3Dgnu -T /home/markus/yocto/genericx86-=
64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux=
-6.01/com32/lib/i386/elf.ld --as-needed -soname libutil.c32 -o libutil.elf =
ansiline.o ansiraw.o keyname.o sha1hash.o unbase64.o md5.o crypt-md5.o sha2=
56crypt.o sha512crypt.o base64.o quicksort.o
ldgcc -Wp,-MT,upload_srec.o,-MD,./.upload_srec.o.d -std=3Dgnu99     -fno-st=
ack-protector -fwrapv -freg-struct-return -Os -fPIC -fno-exceptions -fno-as=
ynchronous-unwind-tables -fno-strict-aliasing -falign-functions=3D0 -falign=
-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 -mregparm=3D3 -DREGPARM=3D3=
 -W -Wall -Wstrict-prototypes  -fomit-frame-pointer -D__COM32__ -nostdinc -=
iwithprefix include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tm=
p/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/inc=
lude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-l=
inux/syslinux-native/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yoc=
to/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.=
01-r0/syslinux-6.01/com32/include/sys -I/home/markus/yocto/genericx86-64-do=
ra-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01=
/com32/gplinclude -c -o upload_srec.o /home/markus/yocto/genericx86-64-dora=
-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/c=
om32/libupload/upload_srec.c
: i386:x86-64 architecture of input file `ansiline.o' is incompatible with =
i386 output
ld: i386:x86-64 architecture of input file `ansiraw.o' is incompatible with=
 i386 output
ld: i386:x86-64 architecture of input file `keyname.o' is incompatible with=
 i386 output
ld: i386:x86-64 architecture of input file `sha1hash.o' is incompatible wit=
h i386 output
ld: i386:x86-64 architecture of input file `unbase64.o' is incompatible wit=
h i386 output
ld: i386:x86-64 architecture of input file `md5.o' is incompatible with i38=
6 output
ld: i386:x86-64 architecture of input file `crypt-md5.o' is incompatible wi=
th i386 output
ld: i386:x86-64 architecture of input file `sha256crypt.o' is incompatible =
with i386 output
ld: i386:x86-64 architecture of input file `sha512crypt.o' is incompatible =
with i386 output
ld: i386:x86-64 architecture of input file `base64.o' is incompatible with =
i386 output
ld: i386:x86-64 architecture of input file `quicksort.o' is incompatible wi=
th i386 output
ansiline.o: In function `console_ansi_std':
ansiline.c:(.text+0x3): undefined reference to `dev_ansiserial_w'
ansiline.c:(.text+0xa): undefined reference to `dev_stdcon_r'
ansiline.c:(.text+0xf): undefined reference to `openconsole'
ansiraw.o: In function `console_ansi_raw':
ansiraw.c:(.text+0x3): undefined reference to `dev_ansiserial_w'
ansiraw.c:(.text+0xa): undefined reference to `dev_rawcon_r'
ansiraw.c:(.text+0xf): undefined reference to `openconsole'
keyname.o: In function `key_name_to_code':
keyname.c:(.text+0x40): undefined reference to `strcasecmp'
crypt-md5.o: In function `crypt_md5':
crypt-md5.c:(.text+0x5f): undefined reference to `strncmp'
sha256crypt.o: In function `sha256_crypt_r':
sha256crypt.c:(.text+0x4af): undefined reference to `strncmp'
sha256crypt.c:(.text+0x4cd): undefined reference to `strncmp'
sha256crypt.c:(.text+0x4e2): undefined reference to `strtoul'
sha256crypt.c:(.text+0x544): undefined reference to `strcspn'
sha256crypt.c:(.text+0x965): undefined reference to `stpncpy'
sha256crypt.c:(.text+0x9a7): undefined reference to `snprintf'
sha256crypt.c:(.text+0x9e3): undefined reference to `stpncpy'
sha256crypt.c:(.text+0xd12): undefined reference to `errno'
sha256crypt.o: In function `sha256_crypt':
sha256crypt.c:(.text+0xdcd): undefined reference to `realloc'
sha512crypt.o: In function `sha512_crypt_r':
sha512crypt.c:(.text+0x586): undefined reference to `strncmp'
sha512crypt.c:(.text+0x5a4): undefined reference to `strncmp'
sha512crypt.c:(.text+0x5b9): undefined reference to `strtoul'
sha512crypt.c:(.text+0x61b): undefined reference to `strcspn'
sha512crypt.c:(.text+0xa34): undefined reference to `stpncpy'
sha512crypt.c:(gcc -Wp,-MT,upload_tftp.o,-MD,./.upload_tftp.o.d -std=3Dgnu9=
9     -fno-stack-protector -fwrapv -freg-struct-return -Os -fPIC -fno-excep=
tions -fno-asynchronous-unwind-tables -fno-strict-aliasing -falign-function=
s=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 -mregparm=3D3 =
-DREGPARM=3D3 -W -Wall -Wstrict-prototypes  -fomit-frame-pointer -D__COM32_=
_ -nostdinc -iwithprefix include -I/home/markus/yocto/genericx86-64-dora-10=
.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com3=
2/libutil/include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/=
work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/include -I/ho=
me/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sysli=
nux-native/6.01-r0/syslinux-6.01/com32/include/sys -I/home/markus/yocto/gen=
ericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/=
syslinux-6.01/com32/gplinclude -c -o upload_tftp.o /home/markus/yocto/gener=
icx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/sy=
slinux-6.01/com32/libupload/upload_tftp.c
.text+0xa6f): undefined reference to `snprintf'
sha512crypt.c:(.text+0xaa4): undefined reference to `stpncpy'
sha512crypt.c:(.text+0x10df): undefined reference to `errno'
sha512crypt.o: In function `sha512_crypt':
sha512crypt.c:(.text+0x11a2): undefined reference to `realloc'
quicksort.o: In function `quick_sort_range':
quicksort.c:(.text+0x1e): undefined reference to `lrand48'
make[4]: *** [libutil.elf] Error 1
make[4]: *** Waiting for unfinished jobs....
gcc -Wp,-MT,upload_ymodem.o,-MD,./.upload_ymodem.o.d -std=3Dgnu99     -fno-=
stack-protector -fwrapv -freg-struct-return -Os -fPIC -fno-exceptions -fno-=
asynchronous-unwind-tables -fno-strict-aliasing -falign-functions=3D0 -fali=
gn-jumps=3D0 -falign-labels=3D0 -falign-loops=3D0 -mregparm=3D3 -DREGPARM=
=3D3 -W -Wall -Wstrict-prototypes  -fomit-frame-pointer -D__COM32__ -nostdi=
nc -iwithprefix include -I/home/markus/yocto/genericx86-64-dora-10.0.0/buil=
d/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil=
/include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_=
64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/include -I/home/markus=
/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-nativ=
e/6.01-r0/syslinux-6.01/com32/include/sys -I/home/markus/yocto/genericx86-6=
4-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-=
6.01/com32/gplinclude -c -o upload_ymodem.o /home/markus/yocto/genericx86-6=
4-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-=
6.01/com32/libupload/upload_ymodem.c
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libupload/upload_srec.c:1:0: warn=
ing: -mregparm is ignored in 64-bit mode [enabled by default]
 /*
 ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libupload/upload_tftp.c:1:0: warn=
ing: -mregparm is ignored in 64-bit mode [enabled by default]
 /*
 ^
gcc -Wp,-MT,zout.o,-MD,./.zout.o.d -std=3Dgnu99     -fno-stack-protector -f=
wrapv -freg-struct-return -Os -fPIC -fno-exceptions -fno-asynchronous-unwin=
d-tables -fno-strict-aliasing -falign-functions=3D0 -falign-jumps=3D0 -fali=
gn-labels=3D0 -falign-loops=3D0 -mregparm=3D3 -DREGPARM=3D3 -W -Wall -Wstri=
ct-prototypes  -fomit-frame-pointer -D__COM32__ -nostdinc -iwithprefix incl=
ude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-li=
nux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/include -I/home/mar=
kus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-na=
tive/6.01-r0/syslinux-6.01/com32/include -I/home/markus/yocto/genericx86-64=
-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6=
.01/com32/include/sys -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/=
tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/gplinclud=
e -c -o zout.o /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/=
x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libupload/zout.c
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libupload/upload_ymodem.c:1:0: wa=
rning: -mregparm is ignored in 64-bit mode [enabled by default]
 /*
 ^
/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/sy=
slinux-native/6.01-r0/syslinux-6.01/com32/libupload/zout.c:1:0: warning: -m=
regparm is ignored in 64-bit mode [enabled by default]
 /*
 ^
rm -f libcom32upload.a
ar cq libcom32upload.a cpio.o ctime.o serial.o upload_srec.o upload_tftp.o =
upload_ymodem.o zout.o
ranlib libcom32upload.a
mkdir -m 755 -p /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work=
/x86_64-linux/syslinux-native/6.01-r0/image/home/markus/yocto/genericx86-64=
-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/share/syslinux/com32
install -m 644 libcom32upload.a /home/markus/yocto/genericx86-64-dora-10.0.=
0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/image/home/markus/yoc=
to/genericx86-64-dora-10.0.0/build/tmp/sysroots/x86_64-linux/usr/share/sysl=
inux/com32
mkdir -p /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64=
-linux/syslinux-native/6.01-r0/image/home/markus/yocto/genericx86-64-dora-1=
0.0.0/build/tmp/sysroots/x86_64-linux/usr/share/syslinux/com32/include/
cp -r /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-li=
nux/syslinux-native/6.01-r0/syslinux-6.01/com32/libupload/*.h /home/markus/=
yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native=
/6.01-r0/image/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/sysroo=
ts/x86_64-linux/usr/share/syslinux/com32/include/
make[4]: Leaving directory `/home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32/=
libupload'
make[4]: Leaving directory `/home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32/=
libutil'
make[3]: *** [libutil] Error 2
make[3]: Leaving directory `/home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios/com32'
make[2]: *** [install] Error 2
make[2]: Leaving directory `/home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/bios'
make[1]: *** [bios] Error 2
make[1]: Leaving directory `/home/markus/yocto/genericx86-64-dora-10.0.0/bu=
ild/tmp/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01'
make: *** [install] Error 2
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_install (log file is located at /home/markus/yoc=
to/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.=
01-r0/temp/log.do_install.7940)

--------------080004040102050108060902--
