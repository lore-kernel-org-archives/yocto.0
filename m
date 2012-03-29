Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4551E00596
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 18:55:00 -0700 (PDT)
Received: from WX-EXCHMB2.insigma.com.cn (10.0.1.203) by
	WX-Edge.insigma.com.cn (10.0.1.205) with Microsoft SMTP Server (TLS) id
	8.3.83.0; Thu, 29 Mar 2012 09:54:04 +0800
Received: from [192.168.0.98] (122.224.76.38) by Wx-ExchMB2.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.3.83.0; Thu, 29 Mar 2012
	09:54:41 +0800
Message-ID: <1332985943.25277.85.camel@localhost.localdomain>
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: Jack Mitchell <ml@communistcode.co.uk>
Date: Thu, 29 Mar 2012 09:52:23 +0800
In-Reply-To: <4F72E29E.7000803@communistcode.co.uk>
References: <1332815600.25277.22.camel@localhost.localdomain>
	<4F717F1A.8090108@communistcode.co.uk>
	<1332842944.25277.42.camel@localhost.localdomain>
	<1332926479.25277.66.camel@localhost.localdomain>
	<4F72E29E.7000803@communistcode.co.uk>
Organization: Insigma
X-Mailer: Evolution 3.2.3 
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: who are using archlinux?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: niqingliang@insigma.com.cn
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Mar 2012 01:55:01 -0000
X-Groupsio-MsgNum: 5595
Content-Type: multipart/mixed; boundary="=-jB+m4/2u28V2BW/93p6d"

--=-jB+m4/2u28V2BW/93p6d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

what the custom script has done is only adding the build dir (which
include the 'python' symlink) into the 'PATH', only that.
AND: integrate the oe-init-build-env and bitbake together.
indeed, no modification.

using it, I can build anything with one command (call the script),
without it, I must call init env script manually.

archlinux: latest
poky: latest
build: clean (> 4times)

indeed, the possibility you mentioned has been excluded by my test.
you can build it succcessfully. what arch of arch you are using? x86 or
x86-64? what about the local.conf? are you using the same as mine?.

both of them from my side is x86-64.

I doubt 'ld', only because of my test. the attachment 'testgconf.sh'
contain the root cause of the problem. and I attached the local.conf I
have used, just remove the 'SOURCE_MIRROR_URL' if test it.

you can run it to check the output, before that, you should change the
two var in the head of it:
POKY_DIR="/media/pangu/optimus"
COMPILE_DIR="/media/pangu/lsbt"

in it, the modification I have done (modify 'PATH') has been removed.

maybe you can run it success, but you can check the 'libXrandr.so.2'
line in the output, if it like:
found libXrandr.so.2 at /usr/lib/../lib/libXrandr.so.2

that is the problem, even you success, it has problem. 
you can paste your output in the email. let's check it.
the version of libxrandr on my host is 1.3.2-2.


On Wed, 2012-03-28 at 18:06 +0800, Jack Mitchell wrote:
> On 28/03/12 10:21, Ni Qingliang wrote:
> > no echo again?
> >
> > what's the problem?
> >
> > am I wrong? where?
> >
> > On Tue, 2012-03-27 at 18:09 +0800, 倪庆亮 wrote:
> >> thanks your reply, indeed, this is not the first email thread about the
> >> gconf compile problem. it in there only because of no echo.
> >>
> >> I have installed python2, and made a symlink in the build directory, and
> >> exported to the env var PATH.
> >>
> >> this is the script I used to build (located in the build directory):
> >> 	#!/bin/bash
> >> 	loc_dir="`pwd`"
> >> 	. ${loc_dir}/../optimus/oe-init-build-env ${loc_dir}
> >> 	export PATH="${loc_dir}:$PATH"
> >> 	bitbake $@
> >>
> >> OS: x86-64 arch / desktop env: gnome 3.2
> >> local.conf ( modified section ):
> >> 	MACHINE ??= "qemux86-64"
> >> 	DISTRO ?= "poky-lsb"
> >> 	SOURCE_MIRROR_URL = "http://10.10.20.149/optimussources/"
> >> 	INHERIT += "own-mirrors"
> >> 	BB_GENERATE_MIRROR_TARBALLS = "0"
> >> 	INHERIT += "rm_work"
> >> 	CCACHE = ""
> >>
> >> when build gconf, got error:
> >>   /usr/lib/../lib/libXrandr.so.2: undefined reference to
> >> `memcpy@GLIBC_2.14'
> >> when 'do_compile' at sanity-check step.
> >>
> >> the log of do_compile is attached, here is the last cmd (only reserve
> >> rpath):
> >> 	../x86_64-poky-linux-libtool ...  -Wl,-rpath -Wl,/usr/lib/../lib
> >>
> >> the libXrandr.so.2 (depended by the libgtk/libgdk) not appear in the
> >> command explicitly.
> >>
> >> I have add --verbose in the command, and found the ld find it in the
> >> host's rootfs, but it should search it in the sysroot arg.
> >>
> >> If remove the rpath arg or with the rpath arg prefixed by sysroot arg, I
> >> can build success. (wich will search the libXrandr in the sysroot arg
> >> correctly)
> >>
> >> so I think the error is focused on the `ld' which should search in the
> >> sysroot arg at first for implicit dependended libs, but not host's
> >> rootfs.
> >>
> >>
> >>
> >> On Tue, 2012-03-27 at 16:49 +0800, Jack Mitchell wrote:
> >>> On 27/03/12 03:33, Ni Qingliang wrote:
> >>>> who are using archlinux? I want to talk about gconf compile fail
> >>>> problem.
> >>>>
> >>>>
> >>> I use Archlinux for OE/Yocto, could you post your error so we can get an
> >>> idea of the problem you are having?
> >>>
> >>> One note for Archlinux is that it ships Python 3 as default, to you must
> >>> install Python2 from the repositories then symlink python2 to python in
> >>> /usb/bin.
> >>>
> >>> Regards,
> >>>
> 
> I'm not 100% sure what the issue is. How come you are using a custom 
> build script and not the one bundled with OE? I'm not an expert by any 
> stretch of the imagination but by not using the given initialisation 
> scripts leaves me completely out of ideas as you're running a custom 
> setup which I couldn't possibly know the extent of.
> 
> All I can really comment on is that Yocto builds fine and consistently 
> with Archlinux using the latest packages (I update nearly everyday) so 
> the only issue I can see is that your build setup script doesn't cut the 
> mustard. Have you tried a completely clean build with only the bare git 
> clone and no modifications?
> 
> Regards,
> 

-- 
Yi Qingliang
niqingliang@insigma.com.cn
https://niqingliang2003.wordpress.com

--=-jB+m4/2u28V2BW/93p6d
Content-Type: application/x-shellscript; name="testgconf.sh"
Content-Disposition: attachment; filename="testgconf.sh"
Content-Transfer-Encoding: 7bit
Content-Description: testgconf.sh

#!/bin/bash
POKY_DIR="/media/pangu/optimus"
COMPILE_DIR="/media/pangu/lsbt"

cd ${COMPILE_DIR}/tmp/work/x86_64-poky-linux/gconf-3.2.3-r8/GConf-3.2.3/gconf

export PATH="${COMPILE_DIR}/tmp/sysroots/x86_64-linux/usr/bin/x86_64-poky-linux:${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/bin/crossscripts:${COMPILE_DIR}/tmp/sysroots/x86_64-linux/usr/sbin:${COMPILE_DIR}/tmp/sysroots/x86_64-linux/usr/bin:${COMPILE_DIR}/tmp/sysroots/x86_64-linux/sbin:${COMPILE_DIR}/tmp/sysroots/x86_64-linux//bin:${COMPILE_DIR}:${POKY_DIR}/scripts:${POKY_DIR}/bitbake/bin/:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:${POKY_DIR}/scripts"

${COMPILE_DIR}/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.6.4/ld \
--sysroot=${COMPILE_DIR}/tmp/sysroots/qemux86-64 \
--eh-frame-hdr --hash-style=gnu -m elf_x86_64 -dynamic-linker /lib/ld-linux-x86-64.so.2 -o .libs/gconf-sanity-check-2 -t ${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/../lib/crt1.o \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/../lib/crti.o \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/x86_64-poky-linux/4.6.4/crtbegin.o \
-L${COMPILE_DIR}/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux/gcc/x86_64-poky-linux/4.6.4 \
-L${COMPILE_DIR}/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux/gcc/x86_64-poky-linux/4.6.4/../../../../../x86_64-poky-linux/lib/../lib \
-L${COMPILE_DIR}/tmp/sysroots/qemux86-64/lib/../lib -L${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/x86_64-poky-linux/4.6.4 \
-L${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/../lib \
-L${COMPILE_DIR}/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux/gcc/x86_64-poky-linux/4.6.4/../../../../../x86_64-poky-linux/lib \
-L${COMPILE_DIR}/tmp/sysroots/qemux86-64/lib -L${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib \
-O1 --hash-style=gnu --as-needed gconf-sanity-check.o --export-dynamic ./.libs/libgconf-2.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libdbus-glib-1.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libdbus-1.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libgtk-x11-2.0.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libgdk-x11-2.0.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libatk-1.0.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libpangocairo-1.0.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libpangoft2-1.0.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/../lib/libstdc++.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libgdk_pixbuf-2.0.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libgio-2.0.so \
-lresolv ${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libcairo.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libpixman-1.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libpng12.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libXrender.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libX11.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libxcb.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libXau.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libXdmcp.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libpango-1.0.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libfontconfig.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libfreetype.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libexpat.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libgobject-2.0.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libffi.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libgmodule-2.0.so \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libgthread-2.0.so \
-lpthread \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libglib-2.0.so \
-lrt \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/libxml2.so \
-ldl -lz -lm \
-rpath /usr/lib/../lib \
-lgcc --as-needed -lgcc_s --no-as-needed -lpthread -lc -lgcc --as-needed -lgcc_s --no-as-needed \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/x86_64-poky-linux/4.6.4/crtend.o \
${COMPILE_DIR}/tmp/sysroots/qemux86-64/usr/lib/../lib/crtn.o \
--verbose


--=-jB+m4/2u28V2BW/93p6d
Content-Disposition: attachment; filename="local.conf"
Content-Type: text/plain; name="local.conf"; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Content-Description: local.conf

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
BB_NUMBER_THREADS = "4"
# 
# The second option controls how many processes make should run in parallel when
# running compile tasks:
#
#PARALLEL_MAKE = "-j 4"
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
#MACHINE ?= "atom-pc"
#MACHINE ?= "beagleboard"
#MACHINE ?= "mpc8315e-rdb"
#MACHINE ?= "routerstationpro"
#
# This sets the default machine to be qemux86 if no other machine is selected:
MACHINE ??= "qemux86-64"

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
DISTRO ?= "poky-lsb"
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
#  "tools-sdk"      - add development tools (gcc, make, pkgconfig etc.)
#  "tools-debug"    - add debugging tools (gdb, strace)
#  "tools-profile"  - add profiling tools (oprofile, exmap, lttng valgrind (x86 only))
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
# enable this uncomment this line
#IMAGETEST = "qemu"
#
# This variable controls which tests are run against virtual images if enabled
# above. The following would enable bat, boot the test case under the sanity suite
# and perform toolchain tests
#TEST_SCEN = "sanity bat sanity:boot toolchain"
#
# Because of the QEMU booting slowness issue (see bug #646 and #618), the
# autobuilder may suffer a timeout issue when running sanity tests. We introduce
# the variable TEST_SERIALIZE here to reduce the time taken by the sanity tests.
# It is set to 1 by default, which will boot the image and run cases in the same
# image without rebooting or killing the machine instance. If it is set to 0, the
# image will be copied and tested for each case, which will take longer but be
# more precise.
#TEST_SERIALIZE = "1"

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
#SSTATE_MIRRORS ?= "\
#file://.* http://someserver.tld/share/sstate/ \n \
#file://.* file:///some/local/dir/sstate/"

# CONF_VERSION is increased each time build/conf/ changes incompatibly and is used to
# track the version of this file when it was generated. This can safely be ignored if
# this doesn't mean anything to you.
CONF_VERSION = "1"

SOURCE_MIRROR_URL = "http://10.10.20.149/optimussources/"
INHERIT += "own-mirrors"
BB_GENERATE_MIRROR_TARBALLS = "0"
INHERIT += "rm_work"
CCACHE = ""

--=-jB+m4/2u28V2BW/93p6d--
