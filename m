Return-Path: <Tim.Verstraete@medecbenelux.be>
Received: from mail.medecbenelux.be (mail.medecbenelux.be [81.83.14.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E588E0142E
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 01:31:10 -0700 (PDT)
Received: from SBS-MEDEC.medecbenelux.local ([fe80::1b66:a66e:3778:1407]) by
	SBS-MEDEC.medecbenelux.local ([fe80::1b66:a66e:3778:1407%10]) with mapi
	id 14.01.0355.002; Mon, 30 Jul 2012 10:31:09 +0200
From: Tim Verstraete <Tim.Verstraete@medecbenelux.be>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [HOB / OMAP4430] error message without any explanation
Thread-Index: Ac1uKnFRsDYXLrOMSaq6FsTTmGlIrA==
Date: Mon, 30 Jul 2012 08:31:08 +0000
Message-ID: <4439C3C0562087488F139C696CD862A72C16DA@SBS-MEDEC.medecbenelux.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2002:5153:ef2:0:3476:e22f:d2e2:6247]
MIME-Version: 1.0
Subject: [HOB / OMAP4430] error message without any explanation
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
X-List-Received-Date: Mon, 30 Jul 2012 08:31:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am running Ubuntu 12.04 LTS 64bit and on this the denzil release of Yocto=
 with the meta-ti from the Yocto repository. All have been from the denzil =
release branch. Below you can find the settings files: local.conf and BBLAY=
ERS.conf that I used for HOB.=20

What I get is an error message that has no explanation or header or title n=
ame except for blank + close button. Where can I see which recipe is giving=
 me the error?

I can run a core-minimal image though from command line.

Thanks in advance,

Kind regards,

Tim

BBLAYERS.conf:
# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION =3D "4"

BSPDIR :=3D "${@os.path.abspath(os.path.dirname(d.getVar('FILE', True)) + '=
/../..')}"

BBFILES ?=3D ""
BBLAYERS ?=3D " \
	${BSPDIR}/poky-denzil-7.0.1/meta \
	${BSPDIR}/poky-denzil-7.0.1/meta-yocto \
	${BSPDIR}/poky-denzil-7.0.1/meta-ti \
	"

LOCAL.conf:
#
# This file is your local configuration file and is where all local user se=
ttings
# are placed. The comments in this file give some guide to the options a ne=
w user
# to the system might want to change but pretty much any configuration opti=
on can
# be set in this file. More adventurous users can look at local.conf.extend=
ed=20
# which contains other examples of configuration which can be placed in thi=
s file
# but new users likely won't need any of them initially.
#
# Lines starting with the '#' character are commented out and in some cases=
 the=20
# default values are provided as comments to show people example syntax. En=
abling
# the option is a question of removing the # character and making any chang=
e to the
# variable as required.

#
# Parallelism Options
#
# These two options control how much parallelism BitBake should use. The fi=
rst=20
# option determines how many tasks bitbake should run in parallel:
#
BB_NUMBER_THREADS =3D "4"
#=20
# The second option controls how many processes make should run in parallel=
 when
# running compile tasks:
#
PARALLEL_MAKE =3D "-j 4"
#
# For a quad-core machine, BB_NUMBER_THREADS =3D "4", PARALLEL_MAKE =3D "-j=
 4" would
# be appropriate for example.

#
# Machine Selection
#
# You need to select a specific machine to target the build with. There are=
 a selection
# of emulated machines available which can boot and run in the QEMU emulato=
r:
#
#MACHINE ?=3D "qemuarm"
#MACHINE ?=3D "qemumips"
#MACHINE ?=3D "qemuppc"
#MACHINE ?=3D "qemux86"
#MACHINE ?=3D "qemux86-64"
#
# There are also the following hardware board target machines included for=
=20
# demonstration purposes:
#
#MACHINE ?=3D "atom-pc"
#MACHINE ?=3D "beagleboard"
#MACHINE ?=3D "mpc8315e-rdb"
#MACHINE ?=3D "routerstationpro"
#
# This sets the default machine to be qemux86 if no other machine is select=
ed:
#MACHINE ?=3D "qemux86"
MACHINE ?=3D "pandaboard"

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
DLROOT_DIR :=3D "${@os.path.abspath(os.path.dirname(d.getVar('FILE', True))=
 + '/../..')}"
DL_DIR ?=3D "${DLROOT_DIR}/yocto_sources"

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
sing=20
# these defaults.
#
DISTRO ?=3D "poky"
# As an example of a subclass there is a "bleeding" edge policy configurati=
on
# where many versions are set to the absolute latest code from the upstream=
=20
# source control systems. This is just mentioned here as an example, its no=
t
# useful to most new users.
# DISTRO ?=3D "poky-bleeding"

#
# Package Management configuration
#
# This variable lists which packaging formats to enable. Multiple package b=
ackends=20
# can be enabled at once and the first item listed in the variable will be =
used=20
# to generate the root filesystems.
# Options are:
#  - 'package_deb' for debian style deb files
#  - 'package_ipk' for ipk files are used by opkg (a debian style embedded =
package manager)
#  - 'package_rpm' for rpm style packages
# E.g.: PACKAGE_CLASSES ?=3D "package_rpm package_deb package_ipk"
# We default to rpm:
PACKAGE_CLASSES ?=3D "package_rpm"

#
# SDK/ADT target architecture
#
# This variable specified the architecture to build SDK/ADT items for and m=
eans
# you can build the SDK packages for architectures other than the machine y=
ou are=20
# running the build on (i.e. building i686 packages on an x86_64 host._
# Supported values are i686 and x86_64
SDKMACHINE ?=3D "i686"

#
# Extra image configuration defaults
#
# The EXTRA_IMAGE_FEATURES variable allows extra packages to be added to th=
e generated=20
# images. Some of these options are added to certain image types automatica=
lly. The
# variable can contain the following options:
#  "dbg-pkgs"       - add -dbg packages for all installed packages
#                     (adds symbol information for debugging/profiling)
#  "dev-pkgs"       - add -dev packages for all installed packages
#                     (useful if you want to develop against libs in the im=
age)
#  "tools-sdk"      - add development tools (gcc, make, pkgconfig etc.)
#  "tools-debug"    - add debugging tools (gdb, strace)
#  "tools-profile"  - add profiling tools (oprofile, exmap, lttng valgrind =
(x86 only))
#  "tools-testapps" - add useful testing tools (ts_print, aplay, arecord et=
c.)
#  "debug-tweaks"   - make an image suitable for development
#                     e.g. ssh root access has a blank password
# There are other application targets that can be used here too, see
# meta/classes/image.bbclass and meta/classes/core-image.bbclass for more d=
etails.
# We default to enabling the debugging tweaks.
EXTRA_IMAGE_FEATURES =3D "debug-tweaks"

#
# Additional image features
#
# The following is a list of additional classes to use when building images=
 which
# enable extra features. Some available options which can be included in th=
is variable=20
# are:
#   - 'buildstats' collect build statistics
#   - 'image-mklibs' to reduce shared library files size for an image
#   - 'image-prelink' in order to prelink the filesystem image
#   - 'image-swab' to perform host system intrusion detection
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
. To
# enable this uncomment this line
#IMAGETEST =3D "qemu"
#
# This variable controls which tests are run against virtual images if enab=
led
# above. The following would enable bat, boot the test case under the sanit=
y suite
# and perform toolchain tests
#TEST_SCEN =3D "sanity bat sanity:boot toolchain"
#
# Because of the QEMU booting slowness issue (see bug #646 and #618), the
# autobuilder may suffer a timeout issue when running sanity tests. We intr=
oduce
# the variable TEST_SERIALIZE here to reduce the time taken by the sanity t=
ests.
# It is set to 1 by default, which will boot the image and run cases in the=
 same
# image without rebooting or killing the machine instance. If it is set to =
0, the
# image will be copied and tested for each case, which will take longer but=
 be
# more precise.
#TEST_SERIALIZE =3D "1"

#
# Interactive shell configuration
#
# Under certain circumstances the system may need input from you and to do =
this it=20
# can launch an interactive shell. It needs to do this since the build is=20
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
# Shared-state files from other locations
#
# As mentioned above, shared state files are prebuilt cache data objects wh=
ich can=20
# used to accelerate build time. This variable can be used to configure the=
 system
# to search other mirror locations for these objects before it builds the d=
ata itself.
#
# This can be a filesystem directory, or a remote url such as http or ftp. =
These
# would contain the sstate-cache results from previous builds (possibly fro=
m other=20
# machines). This variable works like fetcher MIRRORS/PREMIRRORS and points=
 to the=20
# cache locations to check for the shared objects.
#SSTATE_MIRRORS ?=3D "\
#file://.* http://someserver.tld/share/sstate/ \n \
#file://.* file:///some/local/dir/sstate/"

# CONF_VERSION is increased each time build/conf/ changes incompatibly and =
is used to
# track the version of this file when it was generated. This can safely be =
ignored if
# this doesn't mean anything to you.
CONF_VERSION =3D "1"

#Although not depending on meta-openembedded and not using systemmd, we nee=
d to mask some recipes
BBMASK =3D "meta-ti/recipes-misc"


