Return-Path: <jonty193@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22430C28B2F
	for <webhook@archiver.kernel.org>; Fri, 14 Mar 2025 06:41:33 +0000 (UTC)
Subject: Yocto RPi sato Image Works on Raspberry Pi 4 but Fails on CM4 (with eMMC) IO Board #dunfell #raspberrypi #uboot #yocto
To: yocto@lists.yoctoproject.org
From: jonty193@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (203.109.124.16)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Mar 2025 23:41:25 -0700
Message-ID: <EW0m.1741934485397166034.LhxI@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qR5ZjLMWol2H27yq3GjA"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Mar 2025 06:41:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64954

--qR5ZjLMWol2H27yq3GjA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have built the Yocto Sato image and initially tested it on the Raspberry =
Pi 4 board using an SD card, where it worked successfully. However, when I =
tried running the same image on the CM4 board with eMMC, it did not work.
Am I missing any configuration for the CM4?
Could someone please help me with this?

My local.conf file look like this

#
# This file is your local configuration file and is where all local user se=
ttings
# are placed. The comments in this file give some guide to the options a ne=
w user
# to the system might want to change but pretty much any configuration opti=
on can
# be set in this file. More adventurous users can look at local.conf.extend=
ed
# which contains other examples of configuration which can be placed in thi=
s file
# but new users likely won't need any of them initially.
#
# Lines starting with the '#' character are commented out and in some cases=
 the
# default values are provided as comments to show people example syntax. En=
abling
# the option is a question of removing the # character and making any chang=
e to the
# variable as required.
#
# Machine Selection
#
# You need to select a specific machine to target the build with. There are=
 a selection
# of emulated machines available which can boot and run in the QEMU emulato=
r:
#
#MACHINE ?=3D "qemuarm"
#MACHINE ?=3D "qemuarm64"
#MACHINE ?=3D "qemumips"
#MACHINE ?=3D "qemumips64"
#MACHINE ?=3D "qemuppc"
#MACHINE ?=3D "qemux86"
#MACHINE ?=3D "qemux86-64"
#
# There are also the following hardware board target machines included for
# demonstration purposes:
#
#MACHINE ?=3D "beaglebone-yocto"
#MACHINE ?=3D "genericx86"
#MACHINE ?=3D "genericx86-64"
#MACHINE ?=3D "edgerouter"
#
# This sets the default machine to be qemux86-64 if no other machine is sel=
ected:
MACHINE ??=3D "raspberrypi4-64"
SDKMACHINE ?=3D "x86_64"
#
# Where to place downloads
#
# During a first build the system will download many different source code =
tarballs
# from various upstream projects. This can take a while, particularly if yo=
ur network
# connection is slow. These are all stored in DL_DIR. When wiping and rebui=
lding you
# can preserve this directory to speed up this part of subsequent builds. T=
his directory
# is safe to share between multiple builds on the same machine too.
#
# The default is a downloads directory under TOPDIR which is the build dire=
ctory.
#
#DL_DIR ?=3D "${TOPDIR}/downloads"
#
# Where to place shared-state files
#
# BitBake has the capability to accelerate builds based on previously built=
 output.
# This is done using "shared state" files which can be thought of as cache =
objects
# and this option determines where those files are placed.
#
# You can wipe out TMPDIR leaving this directory intact and the build would=
 regenerate
# from these files if no changes were made to the configuration. If changes=
 were made
# to the configuration, only shared state files where the state was still v=
alid would
# be used (done using checksums).
#
# The default is a sstate-cache directory under TOPDIR.
#
#SSTATE_DIR ?=3D "${TOPDIR}/sstate-cache"
#
# Where to place the build output
#
# This option specifies where the bulk of the building work should be done =
and
# where BitBake should place its temporary files and output. Keep in mind t=
hat
# this includes the extraction and compilation of many applications and the=
 toolchain
# which can use Gigabytes of hard disk space.
#
# The default is a tmp directory under TOPDIR.
#
#TMPDIR =3D "${TOPDIR}/tmp"
#
# Default policy config
#
# The distribution setting controls which policy settings are used as defau=
lts.
# The default value is fine for general Yocto project use, at least initial=
ly.
# Ultimately when creating custom policy, people will likely end up subclas=
sing
# these defaults.
#
DISTRO ?=3D "poky"
# As an example of a subclass there is a "bleeding" edge policy configurati=
on
# where many versions are set to the absolute latest code from the upstream
# source control systems. This is just mentioned here as an example, its no=
t
# useful to most new users.
# DISTRO ?=3D "poky-bleeding"
#
# Package Management configuration
#
# This variable lists which packaging formats to enable. Multiple package b=
ackends
# can be enabled at once and the first item listed in the variable will be =
used
# to generate the root filesystems.
# Options are:
# =C2=A0- 'package_deb' for debian style deb files
# =C2=A0- 'package_ipk' for ipk files are used by opkg (a debian style embe=
dded package manager)
# =C2=A0- 'package_rpm' for rpm style packages
# E.g.: PACKAGE_CLASSES ?=3D "package_rpm package_deb package_ipk"
# We default to rpm:
PACKAGE_CLASSES ?=3D "package_rpm"
#
# SDK target architecture
#
# This variable specifies the architecture to build SDK items for and means
# you can build the SDK packages for architectures other than the machine y=
ou are
# running the build on (i.e. building i686 packages on an x86_64 host).
# Supported values are i686 and x86_64
#SDKMACHINE ?=3D "i686"
#
# Extra image configuration defaults
#
# The EXTRA_IMAGE_FEATURES variable allows extra packages to be added to th=
e generated
# images. Some of these options are added to certain image types automatica=
lly. The
# variable can contain the following options:
# =C2=A0"dbg-pkgs" =C2=A0 =C2=A0 =C2=A0 - add -dbg packages for all install=
ed packages
# =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (ad=
ds symbol information for debugging/profiling)
# =C2=A0"src-pkgs" =C2=A0 =C2=A0 =C2=A0 - add -src packages for all install=
ed packages
# =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (ad=
ds source code for debugging)
# =C2=A0"dev-pkgs" =C2=A0 =C2=A0 =C2=A0 - add -dev packages for all install=
ed packages
# =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (us=
eful if you want to develop against libs in the image)
# =C2=A0"ptest-pkgs" =C2=A0 =C2=A0 - add -ptest packages for all ptest-enab=
led packages
# =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (us=
eful if you want to run the package test suites)
# =C2=A0"tools-sdk" =C2=A0 =C2=A0 =C2=A0- add development tools (gcc, make,=
 pkgconfig etc.)
# =C2=A0"tools-debug" =C2=A0 =C2=A0- add debugging tools (gdb, strace)
# =C2=A0"eclipse-debug" =C2=A0- add Eclipse remote debugging support
# =C2=A0"tools-profile" =C2=A0- add profiling tools (oprofile, lttng, valgr=
ind)
# =C2=A0"tools-testapps" - add useful testing tools (ts_print, aplay, areco=
rd etc.)
# =C2=A0"debug-tweaks" =C2=A0 - make an image suitable for development
# =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 e.g=
. ssh root access has a blank password
# There are other application targets that can be used here too, see
# meta/classes/image.bbclass and meta/classes/core-image.bbclass for more d=
etails.
# We default to enabling the debugging tweaks.
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
DISTRO_FEATURES_append =3D " systemd"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
VIRTUAL-RUNTIME_initscripts =3D ""
IMAGE_INSTALL_append =3D " rauc"
IMAGE_FSTYPES=3D"tar.bz2 ext4 wic.bz2 wic.bmap"
SDIMG_ROOTFS_TYPE=3D"ext4"
ENABLE_UART =3D "1"
RPI_USE_U_BOOT =3D "1"
PREFERRED_PROVIDER_virtual/bootloader =3D "u-boot"
#KERNEL_DEVICETREE =3D "bcm2711-rpi-cm4.dtb"
WKS_FILE =3D "sdimage-dual-raspberrypi.wks.in"
# useful software
CORE_IMAGE_EXTRA_INSTALL +=3D "htop iotop iperf3"
# add libopencv-XXX to insert new module
CORE_IMAGE_EXTRA_INSTALL +=3D "opencv \
libopencv-core-dev \
libopencv-highgui-dev \
libopencv-imgproc-dev \
libopencv-objdetect-dev \
libopencv-ml-dev \
opencv-apps \
opencv-dev \
libopencv-xphoto \
opencv-dev "
#
# Additional image features
#
# The following is a list of additional classes to use when building images=
 which
# enable extra features. Some available options which can be included in th=
is variable
# are:
# =C2=A0 - 'buildstats' collect build statistics
# =C2=A0 - 'image-mklibs' to reduce shared library files size for an image
# =C2=A0 - 'image-prelink' in order to prelink the filesystem image
# NOTE: if listing mklibs & prelink both, then make sure mklibs is before p=
relink
# NOTE: mklibs also needs to be explicitly enabled for a given image, see l=
ocal.conf.extended
USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
#
# Runtime testing of images
#
# The build system can test booting virtual machine images under qemu (an e=
mulator)
# after any root filesystems are created and run tests against those images=
. It can also
# run tests against any SDK that are built. To enable this uncomment these =
lines.
# See classes/test{image,sdk}.bbclass for further details.
#IMAGE_CLASSES +=3D "testimage testsdk"
#TESTIMAGE_AUTO_qemuall =3D "1"
#
# Interactive shell configuration
#
# Under certain circumstances the system may need input from you and to do =
this it
# can launch an interactive shell. It needs to do this since the build is
# multithreaded and needs to be able to handle the case where more than one=
 parallel
# process may require the user's attention. The default is iterate over the=
 available
# terminal types to find one that works.
#
# Examples of the occasions this may happen are when resolving patches whic=
h cannot
# be applied, to use the devshell or the kernel menuconfig
#
# Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE 3.x on=
ly), none
# Note: currently, Konsole support only works for KDE 3.x due to the way
# newer Konsole versions behave
#OE_TERMINAL =3D "auto"
# By default disable interactive patch resolution (tasks will just fail ins=
tead):
PATCHRESOLVE =3D "noop"
#
# Disk Space Monitoring during the build
#
# Monitor the disk space during the build. If there is less that 1GB of spa=
ce or less
# than 100K inodes in any key build location (TMPDIR, DL_DIR, SSTATE_DIR), =
gracefully
# shutdown the build. If there is less that 100MB or 1K inodes, perform a h=
ard abort
# of the build. The reason for this is that running completely out of space=
 can corrupt
# files and damages the build in ways which may not be easily recoverable.
# It's necesary to monitor /tmp, if there is no space left the build will f=
ail
# with very exotic errors.
BB_DISKMON_DIRS ??=3D "\
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
# As mentioned above, shared state files are prebuilt cache data objects wh=
ich can
# used to accelerate build time. This variable can be used to configure the=
 system
# to search other mirror locations for these objects before it builds the d=
ata itself.
#
# This can be a filesystem directory, or a remote url such as http or ftp. =
These
# would contain the sstate-cache results from previous builds (possibly fro=
m other
# machines). This variable works like fetcher MIRRORS/PREMIRRORS and points=
 to the
# cache locations to check for the shared objects.
# NOTE: if the mirror uses the same structure as SSTATE_DIR, you need to ad=
d PATH
# at the end as shown in the examples below. This will be substituted with =
the
# correct path within the directory structure.
#SSTATE_MIRRORS ?=3D "\
#file://.* http://someserver.tld/share/sstate/PATH;downloadfilename=3DPATH =
\n \
#file://.* file:///some/local/dir/sstate/PATH"
#
# Yocto Project SState Mirror
#
# The Yocto Project has prebuilt artefacts available for its releases, you =
can enable
# use of these by uncommenting the following line. This will mean the build=
 uses
# the network to check for artefacts at the start of builds, which does slo=
w it down
# equally, it will also speed up the builds by not having to build things i=
f they are
# present in the cache. It assumes you can download something faster than y=
ou can build it
# which will depend on your network.
#
#SSTATE_MIRRORS ?=3D "file://.* http://sstate.yoctoproject.org/all/PATH;dow=
nloadfilename=3DPATH"
#
# Qemu configuration
#
# By default native qemu will build with a builtin VNC server where graphic=
al output can be
# seen. The line below enables the SDL UI frontend too.
PACKAGECONFIG_append_pn-qemu-system-native =3D " sdl"
# By default libsdl2-native will be built, if you want to use your host's l=
ibSDL instead of
# the minimal libsdl built by libsdl2-native then uncomment the ASSUME_PROV=
IDED line below.
#ASSUME_PROVIDED +=3D "libsdl2-native"
# You can also enable the Gtk UI frontend, which takes somewhat longer to b=
uild, but adds
# a handy set of menus for controlling the emulator.
#PACKAGECONFIG_append_pn-qemu-system-native =3D " gtk+"
#
# Hash Equivalence
#
# Enable support for automatically running a local hash equivalence server =
and
# instruct bitbake to use a hash equivalence aware signature generator. Has=
h
# equivalence improves reuse of sstate by detecting when a given sstate
# artifact can be reused as equivalent, even if the current task hash doesn=
't
# match the one that generated the artifact.
#
# A shared hash equivalent server can be set with "<HOSTNAME>:<PORT>" forma=
t
#
#BB_HASHSERVE =3D "auto"
#BB_SIGNATURE_HANDLER =3D "OEEquivHash"
# CONF_VERSION is increased each time build/conf/ changes incompatibly and =
is used to
# track the version of this file when it was generated. This can safely be =
ignored if
# this doesn't mean anything to you.
CONF_VERSION =3D "1"
ENABLE_UART =3D "1"

--qR5ZjLMWol2H27yq3GjA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I have built the Yocto Sato image and initially tested it on the Raspb=
erry Pi 4 board using an SD card, where it worked successfully. However, wh=
en I tried running the same image on the CM4 board with eMMC, it did not wo=
rk.</div>
<div>Am I missing any configuration for the CM4?</div>
<div>Could someone please help me with this?</div>
<div>&nbsp;</div>
<div>My local.conf file look like this&nbsp;</div>
<div>&nbsp;</div>
<div>
<div>#<br /># This file is your local configuration file and is where all l=
ocal user settings<br /># are placed. The comments in this file give some g=
uide to the options a new user<br /># to the system might want to change bu=
t pretty much any configuration option can<br /># be set in this file. More=
 adventurous users can look at local.conf.extended<br /># which contains ot=
her examples of configuration which can be placed in this file<br /># but n=
ew users likely won't need any of them initially.<br />#<br /># Lines start=
ing with the '#' character are commented out and in some cases the<br /># d=
efault values are provided as comments to show people example syntax. Enabl=
ing<br /># the option is a question of removing the # character and making =
any change to the<br /># variable as required.</div>
<div>#<br /># Machine Selection<br />#<br /># You need to select a specific=
 machine to target the build with. There are a selection<br /># of emulated=
 machines available which can boot and run in the QEMU emulator:<br />#<br =
/>#MACHINE ?=3D "qemuarm"<br />#MACHINE ?=3D "qemuarm64"<br />#MACHINE ?=3D=
 "qemumips"<br />#MACHINE ?=3D "qemumips64"<br />#MACHINE ?=3D "qemuppc"<br=
 />#MACHINE ?=3D "qemux86"<br />#MACHINE ?=3D "qemux86-64"<br />#<br /># Th=
ere are also the following hardware board target machines included for&nbsp=
;<br /># demonstration purposes:<br />#<br />#MACHINE ?=3D "beaglebone-yoct=
o"<br />#MACHINE ?=3D "genericx86"<br />#MACHINE ?=3D "genericx86-64"<br />=
#MACHINE ?=3D "edgerouter"<br />#<br /># This sets the default machine to b=
e qemux86-64 if no other machine is selected:<br />MACHINE ??=3D "raspberry=
pi4-64"<br />SDKMACHINE ?=3D "x86_64"</div>
<div>#<br /># Where to place downloads<br />#<br /># During a first build t=
he system will download many different source code tarballs<br /># from var=
ious upstream projects. This can take a while, particularly if your network=
<br /># connection is slow. These are all stored in DL_DIR. When wiping and=
 rebuilding you<br /># can preserve this directory to speed up this part of=
 subsequent builds. This directory<br /># is safe to share between multiple=
 builds on the same machine too.<br />#<br /># The default is a downloads d=
irectory under TOPDIR which is the build directory.<br />#<br />#DL_DIR ?=
=3D "${TOPDIR}/downloads"</div>
<div>#<br /># Where to place shared-state files<br />#<br /># BitBake has t=
he capability to accelerate builds based on previously built output.<br />#=
 This is done using "shared state" files which can be thought of as cache o=
bjects<br /># and this option determines where those files are placed.<br /=
>#<br /># You can wipe out TMPDIR leaving this directory intact and the bui=
ld would regenerate<br /># from these files if no changes were made to the =
configuration. If changes were made<br /># to the configuration, only share=
d state files where the state was still valid would<br /># be used (done us=
ing checksums).<br />#<br /># The default is a sstate-cache directory under=
 TOPDIR.<br />#<br />#SSTATE_DIR ?=3D "${TOPDIR}/sstate-cache"</div>
<div>#<br /># Where to place the build output<br />#<br /># This option spe=
cifies where the bulk of the building work should be done and<br /># where =
BitBake should place its temporary files and output. Keep in mind that<br /=
># this includes the extraction and compilation of many applications and th=
e toolchain<br /># which can use Gigabytes of hard disk space.<br />#<br />=
# The default is a tmp directory under TOPDIR.<br />#<br />#TMPDIR =3D "${T=
OPDIR}/tmp"</div>
<div>#<br /># Default policy config<br />#<br /># The distribution setting =
controls which policy settings are used as defaults.<br /># The default val=
ue is fine for general Yocto project use, at least initially.<br /># Ultima=
tely when creating custom policy, people will likely end up subclassing&nbs=
p;<br /># these defaults.<br />#<br />DISTRO ?=3D "poky"<br /># As an examp=
le of a subclass there is a "bleeding" edge policy configuration<br /># whe=
re many versions are set to the absolute latest code from the upstream&nbsp=
;<br /># source control systems. This is just mentioned here as an example,=
 its not<br /># useful to most new users.<br /># DISTRO ?=3D "poky-bleeding=
"</div>
<div>#<br /># Package Management configuration<br />#<br /># This variable =
lists which packaging formats to enable. Multiple package backends<br /># c=
an be enabled at once and the first item listed in the variable will be use=
d<br /># to generate the root filesystems.<br /># Options are:<br /># &nbsp=
;- 'package_deb' for debian style deb files<br /># &nbsp;- 'package_ipk' fo=
r ipk files are used by opkg (a debian style embedded package manager)<br /=
># &nbsp;- 'package_rpm' for rpm style packages<br /># E.g.: PACKAGE_CLASSE=
S ?=3D "package_rpm package_deb package_ipk"<br /># We default to rpm:<br /=
>PACKAGE_CLASSES ?=3D "package_rpm"</div>
<div>#<br /># SDK target architecture<br />#<br /># This variable specifies=
 the architecture to build SDK items for and means<br /># you can build the=
 SDK packages for architectures other than the machine you are<br /># runni=
ng the build on (i.e. building i686 packages on an x86_64 host).<br /># Sup=
ported values are i686 and x86_64<br />#SDKMACHINE ?=3D "i686"</div>
<div>#<br /># Extra image configuration defaults<br />#<br /># The EXTRA_IM=
AGE_FEATURES variable allows extra packages to be added to the generated<br=
 /># images. Some of these options are added to certain image types automat=
ically. The<br /># variable can contain the following options:<br /># &nbsp=
;"dbg-pkgs" &nbsp; &nbsp; &nbsp; - add -dbg packages for all installed pack=
ages<br /># &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; (adds symbol information for debugging/profiling)<br /># &nbsp;"src-=
pkgs" &nbsp; &nbsp; &nbsp; - add -src packages for all installed packages<b=
r /># &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 (adds source code for debugging)<br /># &nbsp;"dev-pkgs" &nbsp; &nbsp; &nb=
sp; - add -dev packages for all installed packages<br /># &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (useful if you want to=
 develop against libs in the image)<br /># &nbsp;"ptest-pkgs" &nbsp; &nbsp;=
 - add -ptest packages for all ptest-enabled packages<br /># &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (useful if you want=
 to run the package test suites)<br /># &nbsp;"tools-sdk" &nbsp; &nbsp; &nb=
sp;- add development tools (gcc, make, pkgconfig etc.)<br /># &nbsp;"tools-=
debug" &nbsp; &nbsp;- add debugging tools (gdb, strace)<br /># &nbsp;"eclip=
se-debug" &nbsp;- add Eclipse remote debugging support<br /># &nbsp;"tools-=
profile" &nbsp;- add profiling tools (oprofile, lttng, valgrind)<br /># &nb=
sp;"tools-testapps" - add useful testing tools (ts_print, aplay, arecord et=
c.)<br /># &nbsp;"debug-tweaks" &nbsp; - make an image suitable for develop=
ment<br /># &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; e.g. ssh root access has a blank password<br /># There are other app=
lication targets that can be used here too, see<br /># meta/classes/image.b=
bclass and meta/classes/core-image.bbclass for more details.<br /># We defa=
ult to enabling the debugging tweaks.<br />EXTRA_IMAGE_FEATURES ?=3D "debug=
-tweaks"</div>
<div>DISTRO_FEATURES_append =3D " systemd"<br />VIRTUAL-RUNTIME_init_manage=
r =3D "systemd"<br />DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"<br =
/>VIRTUAL-RUNTIME_initscripts =3D ""</div>
<div>IMAGE_INSTALL_append =3D " rauc"</div>
<div>IMAGE_FSTYPES=3D"tar.bz2 ext4 wic.bz2 wic.bmap"<br />SDIMG_ROOTFS_TYPE=
=3D"ext4"<br />ENABLE_UART =3D "1"<br />RPI_USE_U_BOOT =3D "1"<br />PREFERR=
ED_PROVIDER_virtual/bootloader =3D "u-boot"<br />#KERNEL_DEVICETREE =3D "bc=
m2711-rpi-cm4.dtb"</div>
<div>WKS_FILE =3D "sdimage-dual-raspberrypi.wks.in"</div>
<div># useful software<br />CORE_IMAGE_EXTRA_INSTALL +=3D "htop iotop iperf=
3"</div>
<div># add libopencv-XXX to insert new module&nbsp;<br />CORE_IMAGE_EXTRA_I=
NSTALL +=3D "opencv \<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; libopencv-core-dev \<br /=
>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; libopencv-highgui-dev \<br />&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 libopencv-imgproc-dev \&nbsp;<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; libopencv-objdet=
ect-dev \<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; libopencv-ml-dev \<br />&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; opencv-apps \<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; opencv-dev \<br />&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; libopencv-xphoto \<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; opencv-dev=
 "</div>
<div>#<br /># Additional image features<br />#<br /># The following is a li=
st of additional classes to use when building images which<br /># enable ex=
tra features. Some available options which can be included in this variable=
<br /># are:<br /># &nbsp; - 'buildstats' collect build statistics<br /># &=
nbsp; - 'image-mklibs' to reduce shared library files size for an image<br =
/># &nbsp; - 'image-prelink' in order to prelink the filesystem image<br />=
# NOTE: if listing mklibs &amp; prelink both, then make sure mklibs is befo=
re prelink<br /># NOTE: mklibs also needs to be explicitly enabled for a gi=
ven image, see local.conf.extended<br />USER_CLASSES ?=3D "buildstats image=
-mklibs image-prelink"</div>
<div>#<br /># Runtime testing of images<br />#<br /># The build system can =
test booting virtual machine images under qemu (an emulator)<br /># after a=
ny root filesystems are created and run tests against those images. It can =
also<br /># run tests against any SDK that are built. To enable this uncomm=
ent these lines.<br /># See classes/test{image,sdk}.bbclass for further det=
ails.<br />#IMAGE_CLASSES +=3D "testimage testsdk"<br />#TESTIMAGE_AUTO_qem=
uall =3D "1"</div>
<div>#<br /># Interactive shell configuration<br />#<br /># Under certain c=
ircumstances the system may need input from you and to do this it<br /># ca=
n launch an interactive shell. It needs to do this since the build is<br />=
# multithreaded and needs to be able to handle the case where more than one=
 parallel<br /># process may require the user's attention. The default is i=
terate over the available<br /># terminal types to find one that works.<br =
/>#<br /># Examples of the occasions this may happen are when resolving pat=
ches which cannot<br /># be applied, to use the devshell or the kernel menu=
config<br />#<br /># Supported values are auto, gnome, xfce, rxvt, screen, =
konsole (KDE 3.x only), none<br /># Note: currently, Konsole support only w=
orks for KDE 3.x due to the way<br /># newer Konsole versions behave<br />#=
OE_TERMINAL =3D "auto"<br /># By default disable interactive patch resoluti=
on (tasks will just fail instead):<br />PATCHRESOLVE =3D "noop"</div>
<div>#<br /># Disk Space Monitoring during the build<br />#<br /># Monitor =
the disk space during the build. If there is less that 1GB of space or less=
<br /># than 100K inodes in any key build location (TMPDIR, DL_DIR, SSTATE_=
DIR), gracefully<br /># shutdown the build. If there is less that 100MB or =
1K inodes, perform a hard abort<br /># of the build. The reason for this is=
 that running completely out of space can corrupt<br /># files and damages =
the build in ways which may not be easily recoverable.<br /># It's necesary=
 to monitor /tmp, if there is no space left the build will fail<br /># with=
 very exotic errors.<br />BB_DISKMON_DIRS ??=3D "\<br />&nbsp; &nbsp; STOPT=
ASKS,${TMPDIR},1G,100K \<br />&nbsp; &nbsp; STOPTASKS,${DL_DIR},1G,100K \<b=
r />&nbsp; &nbsp; STOPTASKS,${SSTATE_DIR},1G,100K \<br />&nbsp; &nbsp; STOP=
TASKS,/tmp,100M,100K \<br />&nbsp; &nbsp; ABORT,${TMPDIR},100M,1K \<br />&n=
bsp; &nbsp; ABORT,${DL_DIR},100M,1K \<br />&nbsp; &nbsp; ABORT,${SSTATE_DIR=
},100M,1K \<br />&nbsp; &nbsp; ABORT,/tmp,10M,1K"</div>
<div>#<br /># Shared-state files from other locations<br />#<br /># As ment=
ioned above, shared state files are prebuilt cache data objects which can<b=
r /># used to accelerate build time. This variable can be used to configure=
 the system<br /># to search other mirror locations for these objects befor=
e it builds the data itself.<br />#<br /># This can be a filesystem directo=
ry, or a remote url such as http or ftp. These<br /># would contain the sst=
ate-cache results from previous builds (possibly from other<br /># machines=
). This variable works like fetcher MIRRORS/PREMIRRORS and points to the<br=
 /># cache locations to check for the shared objects.<br /># NOTE: if the m=
irror uses the same structure as SSTATE_DIR, you need to add PATH<br /># at=
 the end as shown in the examples below. This will be substituted with the<=
br /># correct path within the directory structure.<br />#SSTATE_MIRRORS ?=
=3D "\<br />#file://.* http://someserver.tld/share/sstate/PATH;downloadfile=
name=3DPATH \n \<br />#file://.* file:///some/local/dir/sstate/PATH"</div>
<div>#<br /># Yocto Project SState Mirror<br />#<br /># The Yocto Project h=
as prebuilt artefacts available for its releases, you can enable<br /># use=
 of these by uncommenting the following line. This will mean the build uses=
<br /># the network to check for artefacts at the start of builds, which do=
es slow it down<br /># equally, it will also speed up the builds by not hav=
ing to build things if they are<br /># present in the cache. It assumes you=
 can download something faster than you can build it<br /># which will depe=
nd on your network.<br />#<br />#SSTATE_MIRRORS ?=3D "file://.* http://ssta=
te.yoctoproject.org/all/PATH;downloadfilename=3DPATH"</div>
<div>#<br /># Qemu configuration<br />#<br /># By default native qemu will =
build with a builtin VNC server where graphical output can be<br /># seen. =
The line below enables the SDL UI frontend too.<br />PACKAGECONFIG_append_p=
n-qemu-system-native =3D " sdl"<br /># By default libsdl2-native will be bu=
ilt, if you want to use your host's libSDL instead of&nbsp;<br /># the mini=
mal libsdl built by libsdl2-native then uncomment the ASSUME_PROVIDED line =
below.<br />#ASSUME_PROVIDED +=3D "libsdl2-native"</div>
<div># You can also enable the Gtk UI frontend, which takes somewhat longer=
 to build, but adds<br /># a handy set of menus for controlling the emulato=
r.<br />#PACKAGECONFIG_append_pn-qemu-system-native =3D " gtk+"</div>
<div>#<br /># Hash Equivalence<br />#<br /># Enable support for automatical=
ly running a local hash equivalence server and<br /># instruct bitbake to u=
se a hash equivalence aware signature generator. Hash<br /># equivalence im=
proves reuse of sstate by detecting when a given sstate<br /># artifact can=
 be reused as equivalent, even if the current task hash doesn't<br /># matc=
h the one that generated the artifact.<br />#<br /># A shared hash equivale=
nt server can be set with "&lt;HOSTNAME&gt;:&lt;PORT&gt;" format<br />#<br =
/>#BB_HASHSERVE =3D "auto"<br />#BB_SIGNATURE_HANDLER =3D "OEEquivHash"</di=
v>
<div># CONF_VERSION is increased each time build/conf/ changes incompatibly=
 and is used to<br /># track the version of this file when it was generated=
. This can safely be ignored if<br /># this doesn't mean anything to you.<b=
r />CONF_VERSION =3D "1"</div>
<div>ENABLE_UART =3D "1"</div>
</div>

--qR5ZjLMWol2H27yq3GjA--

