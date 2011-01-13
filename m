Return-Path: <rdelaet@mri-inc.net>
Received: from qmta03.westchester.pa.mail.comcast.net
	(qmta03.westchester.pa.mail.comcast.net [76.96.62.32])
	by mx1.pokylinux.org (Postfix) with ESMTP id CC3774C80039
	for <yocto@yoctoproject.org>; Wed, 12 Jan 2011 22:12:25 -0600 (CST)
Received: from omta07.westchester.pa.mail.comcast.net ([76.96.62.59])
	by qmta03.westchester.pa.mail.comcast.net with comcast
	id urbq1f0041GhbT853sCSLe; Thu, 13 Jan 2011 04:12:26 +0000
Received: from [192.168.4.102] ([76.20.196.105])
	by omta07.westchester.pa.mail.comcast.net with comcast
	id usCR1f0012Gv4ys3TsCREs; Thu, 13 Jan 2011 04:12:26 +0000
From: Rick De Laet <rdelaet@mri-inc.net>
To: "Tian, Kevin" <kevin.tian@intel.com>, yocto@yoctoproject.org
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D7895E2F4@shsmsx502.ccr.corp.intel.com>
References: <1294881695.3219.20.camel@laptop>
	<625BA99ED14B2D499DC4E29D8138F1504D7895E2F4@shsmsx502.ccr.corp.intel.com>
Organization: MRI
Date: Wed, 12 Jan 2011 23:12:04 -0500
Message-ID: <1294891924.3219.86.camel@laptop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 (2.28.3-1.fc12) 
Subject: Re: Building all packages using the released toolchain
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: rdelaet@mri-inc.net
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Jan 2011 04:12:26 -0000
X-Groupsio-MsgNum: 787
Content-Type: multipart/mixed; boundary="=-6XubVhT6gxbfuLLbovwK"

--=-6XubVhT6gxbfuLLbovwK
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-13 at 10:32 +0800, Tian, Kevin wrote:
> > From: Rick De Laet
> > Sent: Thursday, January 13, 2011 9:22 AM
> > 
> > I am new to yocto, I have installed yacto on Fedora 12.
> > 
> > I was trying to follow the steps in the getting started guide and was
> > trying a build with "bitbake make-native" and got some build errors in
> > "elfutils", but it was using the compiler in my Fedora distribution.  I
> 
> The make-native is required on Fedora14. So you don't need that step and
> Instead you could directly:
> 	Bitbake poky-image-sato

Ok. I was not sure if it was specific to Fedora 14 or not.  The Quick
Start mentions Fedora 14 "or another distribution with GNU make 3.82"
which is what I have on Fedora 12, so I thought this step would be
required.  


Why is this only required on Fedora 14?  

BTW, I did run Bitbake poky-image-sato, and I got a similar error to
below, but in a different directory

> 
> Btw, could you post your errors?

My gcc version is 4.4.4, the latest available from yum update for Fedora
12.  My poky-4.0-build/conf/local.conf is attached.

My error building the elfutils directory is shown below:

| ccache gcc -std=gnu99 -Wall -Wshadow -Werror -Wunused -Wextra
-fgnu89-inline -Wformat=2
-isystem/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/include -O2
-rdynamic -L/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
-Wl,-rpath-link,/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
-Wl,-rpath,/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
-Wl,-O1 -o ld ld.o ldgeneric.o ldlex.o ldscript.o symbolhash.o
sectionhash.o
versionhash.o ../libebl/libebl.a ../libelf/libelf.so ../lib/libeu.a
-ldl
| ccache gcc -std=gnu99 -Wall -Wshadow -Werror -Wunused -Wextra
-fgnu89-inline -Wformat=2
-isystem/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/include -O2
-Wl,-rpath-link,../libelf:../libdw
-L/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
-Wl,-rpath-link,/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
-Wl,-rpath,/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
-Wl,-O1 -o elflint
elflint.o ../libebl/libebl.a ../libelf/libelf.so ../lib/libeu.a  -ldl
| ldgeneric.o: In function `ld_generic_open_outfile':
| ldgeneric.c:(.text+0x8f62): warning: the use of `mktemp' is dangerous,
better use `mkstemp'
| ./ld: invalid option -- 'p'
| Try `ld --help' or `ld --usage' for more information.
| collect2: ld returned 64 exit status
| make[2]: *** [elflint] Error 1
| ccache gcc -std=gnu99 -Wall -Wshadow -Werror -Wunused -Wextra
-fgnu89-inline -Wformat=2
-isystem/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/include -O2
-Wl,-rpath-link,../libelf:../libdw
-L/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
-Wl,-rpath-link,/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
-Wl,-rpath,/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
-Wl,-O1 -o findtextrel
findtextrel.o ../libdw/libdw.so ../libelf/libelf.so
| ./ld: invalid option -- 'p'
| Try `ld --help' or `ld --usage' for more information.
| collect2: ld returned 64 exit status
| make[2]: *** [findtextrel] Error 1
| rm i386_ld.o
| make[2]: Leaving directory
`/lfs/poky/poky-4.0-build/tmp/work/i686-linux/elfutils-native-0.148-r1/elfutils-0.148/src'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/lfs/poky/poky-4.0-build/tmp/work/i686-linux/elfutils-native-0.148-r1/elfutils-0.148'
| make: *** [all] Error 2
| FATAL: oe_runmake failed
| ERROR: Task failed: ('function do_compile failed',
'/lfs/poky/poky-4.0-build/tmp/work/i686-linux/elfutils-native-0.148-r1/temp/log.do_compile.26312')
NOTE: package elfutils-native-0.148-r1: task do_compile: Failed
ERROR: Task 283
(virtual:native:/lfs/poky/poky-laverne-4.0/meta/recipes-devtools/elfutils/elfutils_0.148.bb, do_compile) failed with 1


> 
> For native packages, yes the host compiler from your distribution is expected btw.
> 
> > have also downloaded the toolchain in /opt/poky, and manually reran
> > configure in the elfutils to use the compilers in /opt/poky and it built
> > fine.
> > 
> > What config changes do I have to make so that bitbake builds everything
> > using the toolchain compilers rather than the default gcc?  (i.e have it
> > run each configure script so that it specifies the toolchain compiler
> > rather than use the default compiler)
> > 
> > I did run the environment script
> > 
> > 	/opt/poky/environment-setup-i586-poky-linux
> > 
> > but apparently more is required
> > 
> 
> This makes me a bit confused what you're tempting to do. Did you try to build
> a complete sato image, or want to use pre-built image and downloard toolchain
> to develop application? For the former you don't need the later /opt/poky
> stuff. For the latter you don't need build any native packages since all the toolchains
> are already there.

Long term what I want to do is build an embedded linux system from
scratch to run on our own hardware.

I only found out about yacto today through searching around the Intel
EDC web site.  We have the Intel Atom based eval board (EG20T) with
Tunnel Creek and saw today that this is a newly supported platform in
yocto so I was very anxious to try it out.  I thought it would be best
to first try and build a standard configuration first just to learn the
tool, so short term, yes, I want to build the complete sato image.   We
are building our own Intal Atom/ Tunnel Creek embedded platform and on
the surface it looks like yacto is a perfect fit.  Trying to decide now
if commercial linux is required or if something like yocto will work.

For developing embedded products I like the idea of having an "isolated"
toolchain so I can built a consistent product, regardless of what
updates I do to my laptop distribution.  So is there a way to configure
yocto to use the /opt/poky toolchain rather than the fedora tools?
 
> 
> Thanks
> Kevin s



--=-6XubVhT6gxbfuLLbovwK
Content-Disposition: attachment; filename="local.conf"
Content-Type: text/plain; name="local.conf"; charset="us-ascii"
Content-Transfer-Encoding: 7bit

# CONF_VERSION is increased each time build/conf/ changes incompatibly
CONF_VERSION = "1"

# Uncomment and change to cache the files Poky downloads in an alternative
# location, default it ${TOPDIR}/downloads
#DL_DIR ?= "${TOPDIR}/downloads"
# Uncomment and change to cache Poky's built staging output in an alternative
# location, default ${TOPDIR}/sstate-cache
#SSTATE_DIR ?= "${TOPDIR}/sstate-cache"

# Uncomment and set to allow bitbake to execute multiple tasks at once.
# For a quadcore, BB_NUMBER_THREADS = "4", PARALLEL_MAKE = "-j 4" would
# be appropriate.
# BB_NUMBER_THREADS = "4"
# Also, make can be passed flags so it run parallel threads e.g.:
# PARALLEL_MAKE = "-j 4"

# The machine to target
MACHINE ?= "qemux86"

# Other supported machines
#MACHINE ?= "qemuarm"
#MACHINE ?= "qemux86-64"
#MACHINE ?= "atom-pc"
#MACHINE ?= "c7x0"
#MACHINE ?= "akita"
#MACHINE ?= "spitz"
#MACHINE ?= "nokia770"
#MACHINE ?= "nokia800"
#MACHINE ?= "fic-gta01"
#MACHINE ?= "bootcdx86"
#MACHINE ?= "cm-x270"
#MACHINE ?= "em-x270"
#MACHINE ?= "htcuniversal"
#MACHINE ?= "mx31ads"
#MACHINE ?= "mx31litekit"
#MACHINE ?= "mx31phy"
#MACHINE ?= "zylonite"
#MACHINE ?= "igep0020"
#MACHINE ?= "igep0030"

DISTRO ?= "poky"
# For bleeding edge / experimental / unstable package versions
# DISTRO ?= "poky-bleeding"

BBMASK = ""

# EXTRA_IMAGE_FEATURES allows extra packages to be added to the generated images 
# (Some of these are automatically added to certain image types)
# "dbg-pkgs"     - add -dbg packages for all installed packages
#                  (adds symbol information for debugging/profiling)
# "dev-pkgs"     - add -dev packages for all installed packages
#                  (useful if you want to develop against libs in the image)
# "tools-sdk"      - add development tools (gcc, make, pkgconfig etc.)
# "tools-debug"    - add debugging tools (gdb, strace)
# "tools-profile"  - add profiling tools (oprofile, exmap, lttng valgrind (x86 only))
# "tools-testapps" - add useful testing tools (ts_print, aplay, arecord etc.)
# "debug-tweaks"   - make an image for suitable of development
#                    e.g. ssh root access has a blank password
# There are other application targets too, see meta/classes/poky-image.bbclass 
# and meta/packages/tasks/task-poky.bb for more details.

EXTRA_IMAGE_FEATURES = "tools-debug tools-profile tools-testapps debug-tweaks"

# The default IMAGE_FEATURES above are too large for the mx31phy and 
# c700/c750 machines which have limited space. The code below limits
# the default features for those machines.
EXTRA_IMAGE_FEATURES_c7x0 = "tools-testapps debug-tweaks"
EXTRA_IMAGE_FEATURES_mx31phy = "debug-tweaks"
EXTRA_IMAGE_FEATURES_mx31ads = "tools-testapps debug-tweaks"

# A list of packaging systems used in generated images
# The first package type listed will be used for rootfs generation
# include 'package_deb' for debs
# include 'package_ipk' for ipks
# include 'package_rpm' for rpms
#PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk"
PACKAGE_CLASSES ?= "package_rpm package_ipk"

# A list of additional classes to use when building the system
# include 'image-prelink' in order to prelink the filesystem image
USER_CLASSES ?= "image-prelink"

# POKYMODE controls the characteristics of the generated packages/images by
# telling poky which type of toolchain to use.
#
# Options include several different EABI combinations and a compatibility 
# mode for the OABI mode poky previously used. 
#
# The default is "eabi"
# Use "oabi" for machines with kernels < 2.6.18 on ARM for example.
# Use "external-MODE" to use the precompiled external toolchains where MODE
# is the type of external toolchain to use e.g. eabi.
# POKYMODE = "external-eabi"

# Uncomment this to specify where BitBake should create its temporary files.
# Note that a full build of everything in OpenEmbedded will take GigaBytes of hard
# disk space, so make sure to free enough space. The default TMPDIR is
# <build directory>/tmp
#TMPDIR = "${POKYBASE}/build/tmp"


# Uncomment this if you are using the Openedhand provided qemu deb - see README
# ASSUME_PROVIDED += "qemu-native"

# Comment this out if you don't have a 3.x gcc version available and wish
# poky to build one for you. The 3.x gcc is required to build qemu-native.
# ASSUME_PROVIDED += "gcc3-native"

# Uncomment these two if you want BitBake to build images useful for debugging.
# DEBUG_BUILD = "1"
# INHIBIT_PACKAGE_STRIP = "1"

# Uncomment these to build a package such that you can use gprof to profile it.
# NOTE: This will only work with 'linux' targets, not
# 'linux-uclibc', as uClibc doesn't provide the necessary
# object files.  Also, don't build glibc itself with these
# flags, or it'll fail to build.
#
# PROFILE_OPTIMIZATION = "-pg"
# SELECTED_OPTIMIZATION = "${PROFILE_OPTIMIZATION}"
# LDFLAGS =+ "-pg"

# Uncomment this if you want BitBake to emit debugging output
# BBDEBUG = "yes"
# Uncomment this if you want BitBake to emit the log if a build fails.
BBINCLUDELOGS = "yes"

# Set this if you wish to make pkgconfig libraries from your system available 
# for native builds. Combined with extra ASSUME_PROVIDEDs this can allow 
# native builds of applications like oprofileui-native (unsupported feature).
#EXTRA_NATIVE_PKGCONFIG_PATH = ":/usr/lib/pkgconfig"
#ASSUME_PROVIDED += "gtk+-native libglade-native"

ENABLE_BINARY_LOCALE_GENERATION = "1"

# The architecture to build SDK items for, by setting this you can build SDK
# packages for architectures other than the host i.e. building i586 packages
# on an x86_64 host.
# Supported values are i586 and x86_64
#SDKMACHINE ?= "i586"

# Poky can try and fetch packaged-staging packages from a http, https or ftp
# mirror. Set this variable to the root of a pstage directory on a server.
#SSTATE_MIRRORS ?= "\
#file://.* http://someserver.tld/share/sstate/ \n \
#file://.* file:///some/local/dir/sstate/"

# Set IMAGETEST to qemu if you want to build testcases and start 
# testing in qemu after do_rootfs.
#IMAGETEST = "qemu"

# By default test cases in sanity suite will be ran. If you want to run other 
# test suite or specific test case(e.g. bat or boot test case under sanity suite), 
# list them like following.
#TEST_SCEN = "sanity bat sanity:boot"

# Set GLIBC_GENERATE_LOCALES to the locales you wish to generate should you not
# wish to perform the time-consuming step of generating all LIBC locales.
# WARNING: this may break localisation!
#GLIBC_GENERATE_LOCALES = "en_GB.UTF-8 en_US.UTF-8"

# Default to not build 32 bit libs on 64 bit systems, comment this
# out if that is desired
NO32LIBS = "1"


--=-6XubVhT6gxbfuLLbovwK--
