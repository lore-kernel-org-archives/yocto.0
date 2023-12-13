Return-Path: <renato.mendes.pes@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76DDDC4167B
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 14:54:23 +0000 (UTC)
Subject: Re: [yocto] Wireless interface (wlan) not shown on Raspberry Pi Zero W
To: Josef Holzmayr <jester@theyoctojester.info>,yocto@lists.yoctoproject.org
From: "Renato Mendes" <renato.mendes.pes@gmail.com>
X-Originating-Location: Petrópolis, Rio de Janeiro, BR (170.254.80.206)
X-Originating-Platform: Mac Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Dec 2023 06:54:13 -0800
References: <CAEt6NwpmUrk_27o582FxobTkYgPQzucYuw9Ojm1omhXQEvpyfg@mail.gmail.com>
In-Reply-To: <CAEt6NwpmUrk_27o582FxobTkYgPQzucYuw9Ojm1omhXQEvpyfg@mail.gmail.com>
Message-ID: <16371.1702479253141760473@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BDCj9U9pux9yebtJuLN7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 14:54:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61879

--BDCj9U9pux9yebtJuLN7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This is the exact tutorial I've followed up to make it work.

My exact local.conf:

/build/conf$ cat local.conf
#
# This file is your local configuration file and is where all local user se=
ttings
# are placed. The comments in this file give some guide to the options a ne=
w user
# to the system might want to change but pretty much any configuration opti=
on can
# be set in this file. More adventurous users can look at
# local.conf.sample.extended which contains other examples of configuration=
 which
# can be placed in this file but new users likely won't need any of them
# initially.
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
MACHINE ??=3D "qemux86-64"

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
#=C2=A0 - 'package_deb' for debian style deb files
#=C2=A0 - 'package_ipk' for ipk files are used by opkg (a debian style embe=
dded package manager)
#=C2=A0 - 'package_rpm' for rpm style packages
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
# Supported values are i686, x86_64, aarch64
#SDKMACHINE ?=3D "i686"

#
# Extra image configuration defaults
#
# The EXTRA_IMAGE_FEATURES variable allows extra packages to be added to th=
e generated
# images. Some of these options are added to certain image types automatica=
lly. The
# variable can contain the following options:
#=C2=A0 "dbg-pkgs"=C2=A0 =C2=A0 =C2=A0 =C2=A0- add -dbg packages for all in=
stalled packages
#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(adds symbol information for debugging/profiling)
#=C2=A0 "src-pkgs"=C2=A0 =C2=A0 =C2=A0 =C2=A0- add -src packages for all in=
stalled packages
#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(adds source code for debugging)
#=C2=A0 "dev-pkgs"=C2=A0 =C2=A0 =C2=A0 =C2=A0- add -dev packages for all in=
stalled packages
#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(useful if you want to develop against libs in the image)
#=C2=A0 "ptest-pkgs"=C2=A0 =C2=A0 =C2=A0- add -ptest packages for all ptest=
-enabled packages
#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(useful if you want to run the package test suites)
#=C2=A0 "tools-sdk"=C2=A0 =C2=A0 =C2=A0 - add development tools (gcc, make,=
 pkgconfig etc.)
#=C2=A0 "tools-debug"=C2=A0 =C2=A0 - add debugging tools (gdb, strace)
#=C2=A0 "eclipse-debug"=C2=A0 - add Eclipse remote debugging support
#=C2=A0 "tools-profile"=C2=A0 - add profiling tools (oprofile, lttng, valgr=
ind)
#=C2=A0 "tools-testapps" - add useful testing tools (ts_print, aplay, areco=
rd etc.)
#=C2=A0 "debug-tweaks"=C2=A0 =C2=A0- make an image suitable for development
#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0e.g. ssh root access has a blank password
# There are other application targets that can be used here too, see
# meta/classes/image.bbclass and meta/classes/core-image.bbclass for more d=
etails.
# We default to enabling the debugging tweaks.
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"

#
# Additional image features
#
# The following is a list of additional classes to use when building images=
 which
# enable extra features. Some available options which can be included in th=
is variable
# are:
#=C2=A0 =C2=A0- 'buildstats' collect build statistics
USER_CLASSES ?=3D "buildstats"

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
#TESTIMAGE_AUTO:qemuall =3D "1"

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
# shutdown the build. If there is less than 100MB or 1K inodes, perform a h=
ard halt
# of the build. The reason for this is that running completely out of space=
 can corrupt
# files and damages the build in ways which may not be easily recoverable.
# It's necessary to monitor /tmp, if there is no space left the build will =
fail
# with very exotic errors.
BB_DISKMON_DIRS ??=3D "\
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
# As mentioned above, shared state files are prebuilt cache data objects wh=
ich can be
# used to accelerate build time. This variable can be used to configure the=
 system
# to search other mirror locations for these objects before it builds the d=
ata itself.
#
# This can be a filesystem directory, or a remote url such as https or ftp.=
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
#file://.* https://someserver.tld/share/sstate/PATH;downloadfilename=3DPATH=
 \
#file://.* file:///some/local/dir/sstate/PATH"

#
# Yocto Project SState Mirror
#
# The Yocto Project has prebuilt artefacts available for its releases, you =
can enable
# use of these by uncommenting the following lines. This will mean the buil=
d uses
# the network to check for artefacts at the start of builds, which does slo=
w it down
# equally, it will also speed up the builds by not having to build things i=
f they are
# present in the cache. It assumes you can download something faster than y=
ou can build it
# which will depend on your network.
# Note: For this to work you also need hash-equivalence passthrough to the =
matching server
#
#BB_HASHSERVE_UPSTREAM =3D "hashserv.yocto.io:8687"
#SSTATE_MIRRORS ?=3D "file://.* http://sstate.yoctoproject.org/all/PATH;dow=
nloadfilename=3DPATH"

#
# Qemu configuration
#
# By default native qemu will build with a builtin VNC server where graphic=
al output can be
# seen. The line below enables the SDL UI frontend too.
PACKAGECONFIG:append:pn-qemu-system-native =3D " sdl"
# By default libsdl2-native will be built, if you want to use your host's l=
ibSDL instead of
# the minimal libsdl built by libsdl2-native then uncomment the ASSUME_PROV=
IDED line below.
#ASSUME_PROVIDED +=3D "libsdl2-native"

# You can also enable the Gtk UI frontend, which takes somewhat longer to b=
uild, but adds
# a handy set of menus for controlling the emulator.
#PACKAGECONFIG:append:pn-qemu-system-native =3D " gtk+"

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

#
# Memory Resident Bitbake
#
# Bitbake's server component can stay in memory after the UI for the curren=
t command
# has completed. This means subsequent commands can run faster since there =
is no need
# for bitbake to reload cache files and so on. Number is in seconds, after =
which the
# server will shut down.
#
#BB_SERVER_TIMEOUT =3D "60"

# CONF_VERSION is increased each time build/conf/ changes incompatibly and =
is used to
# track the version of this file when it was generated. This can safely be =
ignored if
# this doesn't mean anything to you.
CONF_VERSION =3D "2"
#
# Raspeberry PI Zero W Mender configuration
#
MACHINE =3D "raspberrypi0-wifi"
MENDER_ARTIFACT_NAME =3D "release-1"
INHERIT +=3D "mender-full"
RPI_USE_U_BOOT =3D "1"
#MENDER_PARTITION_ALIGNMENT =3D "4096000"
MENDER_BOOT_PART_SIZE_MB =3D "40"
IMAGE_INSTALL:append =3D " kernel-image kernel-devicetree"
IMAGE_FSTYPES:remove =3D "rpi-sdimg"
# Build for Hosted Mender
# To get your tenant token, log in to https://hosted.mender.io,
# click your email at the top right and then "My organization".
# Remember to remove the meta-mender-demo layer (if you have added it).
# We recommend Mender 1.4.0 and Yocto Project's for Hosted Mender.
#
MENDER_SERVER_URL =3D "https://hosted.mender.io"
MENDER_TENANT_TOKEN =3D "...."
DISTRO_FEATURES:append =3D " systemd"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
INIT_MANAGER =3D "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
VIRTUAL-RUNTIME_initscripts =3D ""
IMAGE_FSTYPES =3D "ext4"
#
# UART LOG - You need a special cable to get UART logs
#
#ENABLE_UART =3D "1"
#
# WiFi
#
DISTRO_FEATURES:append =3D " wifi "
IMAGE_INSTALL:append =3D " linux-firmware-rpidistro-bcm43430 "

--BDCj9U9pux9yebtJuLN7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This is the exact tutorial I've followed up to make it work.<br /><br />My =
exact local.conf:<br /><br />
<div>/build/conf$ cat local.conf</div>
<div>#</div>
<div># This file is your local configuration file and is where all local us=
er settings</div>
<div># are placed. The comments in this file give some guide to the options=
 a new user</div>
<div># to the system might want to change but pretty much any configuration=
 option can</div>
<div># be set in this file. More adventurous users can look at</div>
<div># local.conf.sample.extended which contains other examples of configur=
ation which</div>
<div># can be placed in this file but new users likely won't need any of th=
em</div>
<div># initially.</div>
<div>#</div>
<div># Lines starting with the '#' character are commented out and in some =
cases the</div>
<div># default values are provided as comments to show people example synta=
x. Enabling</div>
<div># the option is a question of removing the # character and making any =
change to the</div>
<div># variable as required.</div>
<div>&nbsp;</div>
<div>#</div>
<div># Machine Selection</div>
<div>#</div>
<div># You need to select a specific machine to target the build with. Ther=
e are a selection</div>
<div># of emulated machines available which can boot and run in the QEMU em=
ulator:</div>
<div>#</div>
<div>#MACHINE ?=3D "qemuarm"</div>
<div>#MACHINE ?=3D "qemuarm64"</div>
<div>#MACHINE ?=3D "qemumips"</div>
<div>#MACHINE ?=3D "qemumips64"</div>
<div>#MACHINE ?=3D "qemuppc"</div>
<div>#MACHINE ?=3D "qemux86"</div>
<div>#MACHINE ?=3D "qemux86-64"</div>
<div>#</div>
<div># There are also the following hardware board target machines included=
 for</div>
<div># demonstration purposes:</div>
<div>#</div>
<div>#MACHINE ?=3D "beaglebone-yocto"</div>
<div>#MACHINE ?=3D "genericx86"</div>
<div>#MACHINE ?=3D "genericx86-64"</div>
<div>#MACHINE ?=3D "edgerouter"</div>
<div>#</div>
<div># This sets the default machine to be qemux86-64 if no other machine i=
s selected:</div>
<div>MACHINE ??=3D "qemux86-64"</div>
<div>&nbsp;</div>
<div>#</div>
<div># Where to place downloads</div>
<div>#</div>
<div># During a first build the system will download many different source =
code tarballs</div>
<div># from various upstream projects. This can take a while, particularly =
if your network</div>
<div># connection is slow. These are all stored in DL_DIR. When wiping and =
rebuilding you</div>
<div># can preserve this directory to speed up this part of subsequent buil=
ds. This directory</div>
<div># is safe to share between multiple builds on the same machine too.</d=
iv>
<div>#</div>
<div># The default is a downloads directory under TOPDIR which is the build=
 directory.</div>
<div>#</div>
<div>#DL_DIR ?=3D "${TOPDIR}/downloads"</div>
<div>&nbsp;</div>
<div>#</div>
<div># Where to place shared-state files</div>
<div>#</div>
<div># BitBake has the capability to accelerate builds based on previously =
built output.</div>
<div># This is done using "shared state" files which can be thought of as c=
ache objects</div>
<div># and this option determines where those files are placed.</div>
<div>#</div>
<div># You can wipe out TMPDIR leaving this directory intact and the build =
would regenerate</div>
<div># from these files if no changes were made to the configuration. If ch=
anges were made</div>
<div># to the configuration, only shared state files where the state was st=
ill valid would</div>
<div># be used (done using checksums).</div>
<div>#</div>
<div># The default is a sstate-cache directory under TOPDIR.</div>
<div>#</div>
<div>#SSTATE_DIR ?=3D "${TOPDIR}/sstate-cache"</div>
<div>&nbsp;</div>
<div>#</div>
<div># Where to place the build output</div>
<div>#</div>
<div># This option specifies where the bulk of the building work should be =
done and</div>
<div># where BitBake should place its temporary files and output. Keep in m=
ind that</div>
<div># this includes the extraction and compilation of many applications an=
d the toolchain</div>
<div># which can use Gigabytes of hard disk space.</div>
<div>#</div>
<div># The default is a tmp directory under TOPDIR.</div>
<div>#</div>
<div>#TMPDIR =3D "${TOPDIR}/tmp"</div>
<div>&nbsp;</div>
<div>#</div>
<div># Default policy config</div>
<div>#</div>
<div># The distribution setting controls which policy settings are used as =
defaults.</div>
<div># The default value is fine for general Yocto project use, at least in=
itially.</div>
<div># Ultimately when creating custom policy, people will likely end up su=
bclassing</div>
<div># these defaults.</div>
<div>#</div>
<div>DISTRO ?=3D "poky"</div>
<div># As an example of a subclass there is a "bleeding" edge policy config=
uration</div>
<div># where many versions are set to the absolute latest code from the ups=
tream</div>
<div># source control systems. This is just mentioned here as an example, i=
ts not</div>
<div># useful to most new users.</div>
<div># DISTRO ?=3D "poky-bleeding"</div>
<div>&nbsp;</div>
<div>#</div>
<div># Package Management configuration</div>
<div>#</div>
<div># This variable lists which packaging formats to enable. Multiple pack=
age backends</div>
<div># can be enabled at once and the first item listed in the variable wil=
l be used</div>
<div># to generate the root filesystems.</div>
<div># Options are:</div>
<div>#&nbsp; - 'package_deb' for debian style deb files</div>
<div>#&nbsp; - 'package_ipk' for ipk files are used by opkg (a debian style=
 embedded package manager)</div>
<div>#&nbsp; - 'package_rpm' for rpm style packages</div>
<div># E.g.: PACKAGE_CLASSES ?=3D "package_rpm package_deb package_ipk"</di=
v>
<div># We default to rpm:</div>
<div>PACKAGE_CLASSES ?=3D "package_rpm"</div>
<div>&nbsp;</div>
<div>#</div>
<div># SDK target architecture</div>
<div>#</div>
<div># This variable specifies the architecture to build SDK items for and =
means</div>
<div># you can build the SDK packages for architectures other than the mach=
ine you are</div>
<div># running the build on (i.e. building i686 packages on an x86_64 host)=
.</div>
<div># Supported values are i686, x86_64, aarch64</div>
<div>#SDKMACHINE ?=3D "i686"</div>
<div>&nbsp;</div>
<div>#</div>
<div># Extra image configuration defaults</div>
<div>#</div>
<div># The EXTRA_IMAGE_FEATURES variable allows extra packages to be added =
to the generated</div>
<div># images. Some of these options are added to certain image types autom=
atically. The</div>
<div># variable can contain the following options:</div>
<div>#&nbsp; "dbg-pkgs"&nbsp; &nbsp; &nbsp; &nbsp;- add -dbg packages for a=
ll installed packages</div>
<div>#&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;(adds symbol information for debugging/profiling)</div>
<div>#&nbsp; "src-pkgs"&nbsp; &nbsp; &nbsp; &nbsp;- add -src packages for a=
ll installed packages</div>
<div>#&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;(adds source code for debugging)</div>
<div>#&nbsp; "dev-pkgs"&nbsp; &nbsp; &nbsp; &nbsp;- add -dev packages for a=
ll installed packages</div>
<div>#&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;(useful if you want to develop against libs in the image)</div>
<div>#&nbsp; "ptest-pkgs"&nbsp; &nbsp; &nbsp;- add -ptest packages for all =
ptest-enabled packages</div>
<div>#&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;(useful if you want to run the package test suites)</div>
<div>#&nbsp; "tools-sdk"&nbsp; &nbsp; &nbsp; - add development tools (gcc, =
make, pkgconfig etc.)</div>
<div>#&nbsp; "tools-debug"&nbsp; &nbsp; - add debugging tools (gdb, strace)=
</div>
<div>#&nbsp; "eclipse-debug"&nbsp; - add Eclipse remote debugging support</=
div>
<div>#&nbsp; "tools-profile"&nbsp; - add profiling tools (oprofile, lttng, =
valgrind)</div>
<div>#&nbsp; "tools-testapps" - add useful testing tools (ts_print, aplay, =
arecord etc.)</div>
<div>#&nbsp; "debug-tweaks"&nbsp; &nbsp;- make an image suitable for develo=
pment</div>
<div>#&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;e.g. ssh root access has a blank password</div>
<div># There are other application targets that can be used here too, see</=
div>
<div># meta/classes/image.bbclass and meta/classes/core-image.bbclass for m=
ore details.</div>
<div># We default to enabling the debugging tweaks.</div>
<div>EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"</div>
<div>&nbsp;</div>
<div>#</div>
<div># Additional image features</div>
<div>#</div>
<div># The following is a list of additional classes to use when building i=
mages which</div>
<div># enable extra features. Some available options which can be included =
in this variable</div>
<div># are:</div>
<div>#&nbsp; &nbsp;- 'buildstats' collect build statistics</div>
<div>USER_CLASSES ?=3D "buildstats"</div>
<div>&nbsp;</div>
<div>#</div>
<div># Runtime testing of images</div>
<div>#</div>
<div># The build system can test booting virtual machine images under qemu =
(an emulator)</div>
<div># after any root filesystems are created and run tests against those i=
mages. It can also</div>
<div># run tests against any SDK that are built. To enable this uncomment t=
hese lines.</div>
<div># See classes/test{image,sdk}.bbclass for further details.</div>
<div>#IMAGE_CLASSES +=3D "testimage testsdk"</div>
<div>#TESTIMAGE_AUTO:qemuall =3D "1"</div>
<div>&nbsp;</div>
<div>#</div>
<div># Interactive shell configuration</div>
<div>#</div>
<div># Under certain circumstances the system may need input from you and t=
o do this it</div>
<div># can launch an interactive shell. It needs to do this since the build=
 is</div>
<div># multithreaded and needs to be able to handle the case where more tha=
n one parallel</div>
<div># process may require the user's attention. The default is iterate ove=
r the available</div>
<div># terminal types to find one that works.</div>
<div>#</div>
<div># Examples of the occasions this may happen are when resolving patches=
 which cannot</div>
<div># be applied, to use the devshell or the kernel menuconfig</div>
<div>#</div>
<div># Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE 3=
.x only), none</div>
<div># Note: currently, Konsole support only works for KDE 3.x due to the w=
ay</div>
<div># newer Konsole versions behave</div>
<div>#OE_TERMINAL =3D "auto"</div>
<div># By default disable interactive patch resolution (tasks will just fai=
l instead):</div>
<div>PATCHRESOLVE =3D "noop"</div>
<div>&nbsp;</div>
<div>#</div>
<div># Disk Space Monitoring during the build</div>
<div>#</div>
<div># Monitor the disk space during the build. If there is less that 1GB o=
f space or less</div>
<div># than 100K inodes in any key build location (TMPDIR, DL_DIR, SSTATE_D=
IR), gracefully</div>
<div># shutdown the build. If there is less than 100MB or 1K inodes, perfor=
m a hard halt</div>
<div># of the build. The reason for this is that running completely out of =
space can corrupt</div>
<div># files and damages the build in ways which may not be easily recovera=
ble.</div>
<div># It's necessary to monitor /tmp, if there is no space left the build =
will fail</div>
<div># with very exotic errors.</div>
<div>BB_DISKMON_DIRS ??=3D "\</div>
<div>&nbsp; &nbsp; STOPTASKS,${TMPDIR},1G,100K \</div>
<div>&nbsp; &nbsp; STOPTASKS,${DL_DIR},1G,100K \</div>
<div>&nbsp; &nbsp; STOPTASKS,${SSTATE_DIR},1G,100K \</div>
<div>&nbsp; &nbsp; STOPTASKS,/tmp,100M,100K \</div>
<div>&nbsp; &nbsp; HALT,${TMPDIR},100M,1K \</div>
<div>&nbsp; &nbsp; HALT,${DL_DIR},100M,1K \</div>
<div>&nbsp; &nbsp; HALT,${SSTATE_DIR},100M,1K \</div>
<div>&nbsp; &nbsp; HALT,/tmp,10M,1K"</div>
<div>&nbsp;</div>
<div>#</div>
<div># Shared-state files from other locations</div>
<div>#</div>
<div># As mentioned above, shared state files are prebuilt cache data objec=
ts which can be</div>
<div># used to accelerate build time. This variable can be used to configur=
e the system</div>
<div># to search other mirror locations for these objects before it builds =
the data itself.</div>
<div>#</div>
<div># This can be a filesystem directory, or a remote url such as https or=
 ftp. These</div>
<div># would contain the sstate-cache results from previous builds (possibl=
y from other</div>
<div># machines). This variable works like fetcher MIRRORS/PREMIRRORS and p=
oints to the</div>
<div># cache locations to check for the shared objects.</div>
<div># NOTE: if the mirror uses the same structure as SSTATE_DIR, you need =
to add PATH</div>
<div># at the end as shown in the examples below. This will be substituted =
with the</div>
<div># correct path within the directory structure.</div>
<div>#SSTATE_MIRRORS ?=3D "\</div>
<div>#file://.* https://someserver.tld/share/sstate/PATH;downloadfilename=
=3DPATH \</div>
<div>#file://.* file:///some/local/dir/sstate/PATH"</div>
<div>&nbsp;</div>
<div>#</div>
<div># Yocto Project SState Mirror</div>
<div>#</div>
<div># The Yocto Project has prebuilt artefacts available for its releases,=
 you can enable</div>
<div># use of these by uncommenting the following lines. This will mean the=
 build uses</div>
<div># the network to check for artefacts at the start of builds, which doe=
s slow it down</div>
<div># equally, it will also speed up the builds by not having to build thi=
ngs if they are</div>
<div># present in the cache. It assumes you can download something faster t=
han you can build it</div>
<div># which will depend on your network.</div>
<div># Note: For this to work you also need hash-equivalence passthrough to=
 the matching server</div>
<div>#</div>
<div>#BB_HASHSERVE_UPSTREAM =3D "hashserv.yocto.io:8687"</div>
<div>#SSTATE_MIRRORS ?=3D "file://.* http://sstate.yoctoproject.org/all/PAT=
H;downloadfilename=3DPATH"</div>
<div>&nbsp;</div>
<div>#</div>
<div># Qemu configuration</div>
<div>#</div>
<div># By default native qemu will build with a builtin VNC server where gr=
aphical output can be</div>
<div># seen. The line below enables the SDL UI frontend too.</div>
<div>PACKAGECONFIG:append:pn-qemu-system-native =3D " sdl"</div>
<div># By default libsdl2-native will be built, if you want to use your hos=
t's libSDL instead of</div>
<div># the minimal libsdl built by libsdl2-native then uncomment the ASSUME=
_PROVIDED line below.</div>
<div>#ASSUME_PROVIDED +=3D "libsdl2-native"</div>
<div>&nbsp;</div>
<div># You can also enable the Gtk UI frontend, which takes somewhat longer=
 to build, but adds</div>
<div># a handy set of menus for controlling the emulator.</div>
<div>#PACKAGECONFIG:append:pn-qemu-system-native =3D " gtk+"</div>
<div>&nbsp;</div>
<div>#</div>
<div># Hash Equivalence</div>
<div>#</div>
<div># Enable support for automatically running a local hash equivalence se=
rver and</div>
<div># instruct bitbake to use a hash equivalence aware signature generator=
. Hash</div>
<div># equivalence improves reuse of sstate by detecting when a given sstat=
e</div>
<div># artifact can be reused as equivalent, even if the current task hash =
doesn't</div>
<div># match the one that generated the artifact.</div>
<div>#</div>
<div># A shared hash equivalent server can be set with "&lt;HOSTNAME&gt;:&l=
t;PORT&gt;" format</div>
<div>#</div>
<div>#BB_HASHSERVE =3D "auto"</div>
<div>#BB_SIGNATURE_HANDLER =3D "OEEquivHash"</div>
<div>&nbsp;</div>
<div>#</div>
<div># Memory Resident Bitbake</div>
<div>#</div>
<div># Bitbake's server component can stay in memory after the UI for the c=
urrent command</div>
<div># has completed. This means subsequent commands can run faster since t=
here is no need</div>
<div># for bitbake to reload cache files and so on. Number is in seconds, a=
fter which the</div>
<div># server will shut down.</div>
<div>#</div>
<div>#BB_SERVER_TIMEOUT =3D "60"</div>
<div>&nbsp;</div>
<div># CONF_VERSION is increased each time build/conf/ changes incompatibly=
 and is used to</div>
<div># track the version of this file when it was generated. This can safel=
y be ignored if</div>
<div># this doesn't mean anything to you.</div>
<div>CONF_VERSION =3D "2"</div>
<div>#</div>
<div># Raspeberry PI Zero W Mender configuration</div>
<div>#</div>
<div>MACHINE =3D "raspberrypi0-wifi"</div>
<div>MENDER_ARTIFACT_NAME =3D "release-1"</div>
<div>INHERIT +=3D "mender-full"</div>
<div>RPI_USE_U_BOOT =3D "1"</div>
<div>#MENDER_PARTITION_ALIGNMENT =3D "4096000"</div>
<div>MENDER_BOOT_PART_SIZE_MB =3D "40"</div>
<div>IMAGE_INSTALL:append =3D " kernel-image kernel-devicetree"</div>
<div>IMAGE_FSTYPES:remove =3D "rpi-sdimg"</div>
<div># Build for Hosted Mender</div>
<div># To get your tenant token, log in to https://hosted.mender.io,</div>
<div># click your email at the top right and then "My organization".</div>
<div># Remember to remove the meta-mender-demo layer (if you have added it)=
.</div>
<div># We recommend Mender 1.4.0 and Yocto Project's for Hosted Mender.</di=
v>
<div>#</div>
<div>MENDER_SERVER_URL =3D "https://hosted.mender.io"</div>
<div>MENDER_TENANT_TOKEN =3D "...."</div>
<div>DISTRO_FEATURES:append =3D " systemd"</div>
<div>VIRTUAL-RUNTIME_init_manager =3D "systemd"</div>
<div>INIT_MANAGER =3D "systemd"</div>
<div>DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"</div>
<div>VIRTUAL-RUNTIME_initscripts =3D ""</div>
<div>IMAGE_FSTYPES =3D "ext4"</div>
<div>#</div>
<div># UART LOG - You need a special cable to get UART logs</div>
<div>#</div>
<div>#ENABLE_UART =3D "1"</div>
<div>#</div>
<div># WiFi</div>
<div>#</div>
<div>DISTRO_FEATURES:append =3D " wifi "</div>
<div>IMAGE_INSTALL:append =3D " linux-firmware-rpidistro-bcm43430 "<br /><b=
r /></div>

--BDCj9U9pux9yebtJuLN7--

