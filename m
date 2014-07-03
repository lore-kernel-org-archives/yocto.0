Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4F4DE0044D; Thu,  3 Jul 2014 09:24:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 957D6E0044D
	for <yocto@yoctoproject.org>; Thu,  3 Jul 2014 09:23:58 -0700 (PDT)
Received: by mail-vc0-f172.google.com with SMTP id hy10so460943vcb.31
	for <yocto@yoctoproject.org>; Thu, 03 Jul 2014 09:23:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=uQW2NWGE0tysqv/ElDC1wh9vwih1gTZqZCd/BqRZv80=;
	b=AvXQL5uE9hhOUWrau9hQaH6S0vyjWWyTJ1VKgsNrQnyddnfW8YPYc/lMqeE/b8bVzm
	9t8yDjfhSED0nt4c0uMvhB5wQ2E81cUVfqzlt7bkldm8VMCPERs6SlSjtF/3KMxN9His
	F3FFmlSBrqTDiZxPAuLvpq2CudC6eRVqdf0kPUfBhAYjtDYpjQa9jYF4k0TMN2I8NbMx
	0weT52qscPXo+ucLS8TnDKNS2SIV0pjfmMQ7C+kpP+mwHCrogYw8nN9MVwStQI5CP6EU
	n76ap1+gBWqE5+RuMZfYYi45mR16aNDn+/cXBU2bynoFDcZRevrDJ/glatGt6EabPNxb
	/HZg==
X-Gm-Message-State: ALoCoQnGWsBHEKD2vlNKOqHpIE8O/WOL6FQBoQ2yibXGGogrAzqDvmUjlZhkfMHvqPZNZ41laTik
MIME-Version: 1.0
X-Received: by 10.58.89.162 with SMTP id bp2mr120889veb.78.1404404638227; Thu,
	03 Jul 2014 09:23:58 -0700 (PDT)
Received: by 10.52.28.235 with HTTP; Thu, 3 Jul 2014 09:23:58 -0700 (PDT)
Date: Thu, 3 Jul 2014 17:23:58 +0100
Message-ID: <CAPhnLPCxgKq2Op3=obcykiimsuu2YzQ3fGrU2rQZvBUPQb5Aow@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [ANNOUNCEMENT] Yocto Project 1.6.1 Released
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
X-List-Received-Date: Thu, 03 Jul 2014 16:24:02 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

The latest point release of the Yocto Project, 1.6.1 (daisy 11.0.1) is
now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.1/poky-daisy-11.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.6.1/poky-daisy-11.0.1.tar.gz

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.1/RELEASENOTES

This point release of yocto-1.6.1 addresses 36 different CVEs as well
as 133 bug fixes.

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Elizabeth Flanagan
Yocto Project Build and Release
<elizabeth.flanagan@intel.com>


--------------------
yocto-1.6.1 Errata
--------------------

Release Name: poky-daisy-11.0.1
Branch:  daisy
Tag:  daisy-11.0.1
Hash:  0ed5a13f5f9478e2c22f517fb3504b
738422f85c
md5:  cb646c81530bf6365a26e4234e227d5e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.1/poky-daisy-11.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.6.1/poky-daisy-11.0.1.tar.bz2

Release Name: eclipse-poky-juno-daisy-11.0.1
Branch:  daisy
Tag:  daisy-11.0.1
Hash:  26bfc407781aa185f244a47ba63120343cee4a37
md5:  f3badf4b1be826bad99261fee833f7bc
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.1/poky-daisy-11.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.6.1/poky-daisy-11.0.1.tar.bz2

Release Name: eclipse-poky-kepler-daisy-11.0.1
Branch:  daisy
Tag:  daisy-11.0.1
Hash:  4a167fd662262ebdaa3cf0d332ac0debb52d7904
md5:  c8a1550c2269d487a042cbc74d14c4cd
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.1/poky-daisy-11.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.6.1/poky-daisy-11.0.1.tar.bz2

Release Name: meta-qt3-daisy-11.0.1
Branch:  daisy
Tag:  daisy-11.0.1
Hash:  3016129d90b7ac8517a5227d819f10ad417b5b45
md5:  e8987ecd1320b32305eb3a46a27bacdf
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.1/poky-daisy-11.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.6.1/poky-daisy-11.0.1.tar.bz2

--------------------
Security Fixes
--------------------
openssl:    CVE-2014-3470
            CVE-2014-0224
            CVE-2014-0221
            CVE-2014-0198
            CVE-2014-0195
            CVE-2010-5298
            CVE-2014-2653
            CVE-2014-2532
            CVE-2014-0198
            CVE-2010-5298
libxml2:    CVE-2014-0191
gnutls:     CVE-2014-3466
gst-ffmpeg: CVE-2013-0849
            CVE-2013-0850
            CVE-2013-0856
            CVE-2013-0854
            CVE-2013-0851
            CVE-2013-0858
            CVE-2013-0852
            CVE-2013-0845
            CVE-2013-0868
            CVE-2014-2099
            CVE-2013-0865
            CVE-2014-2263
nss:        CVE-2013-1740
            CVE-2014-1492
screen:     CVE-2009-1215
            CVE-2009-1214
subversion: CVE-2013-4277
            CVE-2013-1847
            CVE-2013-1846
            CVE-2013-1845
            CVE-2013-4131
            CVE-2013-4505
            CVE-2013-1849
tiff:       CVE-2013-4231

--------------------
Changelog
--------------------
bitbake: toaster: Fix spacing and layout in no image files notification
bitbake: toaster: display message if no images are generated
bitbake: toaster: Add performance testing script
bitbake: toaster: refactor the target page
bitbake: toastergui: fix built ETA calculation
bitbake: toaster: reduce redundant foreign key lookups
bitbake: toaster: sort columns properly after edit columns
bitbake: toaster: fix span2 headings for packages
bitbake: toaster: sort outcome and sstate columns by string value
bitbake: bitbake: toaster: Fix Empty tasks filter
bitbake: bitbake: toaster: Fix total number of tasks in build dashboard
local.conf.sample: Add sdl to nativesdk qemu PACKAGECONFIG
profile-manual: Fixed a bad title for the intro chapter.
dev-manual: Fixed a link that was spanning two lines.
mega-manual.sed: Added a processing line for the profile-manual.
documentation: Updated the manual revision history tables for 1.6.1
ref-manual: Fixed a link to the BitBake User Manual.
ref-manual: Edits to "atom-pc Board Support Package (BSP)" section.
ref-manual: Added ptest default build info to migrating section.
python-native : Add patch to fix configure error with gcc 4.8.
rootfs.py: change the logic in _uninstall_unneeded
ptest: Work from PTEST_ENABLED, not DISTRO_FEATURES
gcc: Clean up configure_prepend and fix for mingw
dbus: fix a hard dependency about dbus-ptest
build-appliance-image: Update to head revision
poky.conf: Bump DISTRO_VERSION
rpm: Fix cpio 32 bit overflow issues on 64 bit inode filesystems
Revert "fontconfig: enable 64 bit file support"
update-rc.d/useradd: Add additional dependecies
systemd: update a uclibc specific patch to avoid segment fault
image_types: Fix ubi filesystem return codes
x264: Update SRCREV to match commit in upstream git repo
grub_git: fix build warning->error
sanity.bbclass: Add libsdl-native check
libfm: Ensure m4 directory exists
v86d: fix for SeaBIOS VGA BIOS compatibility
util-linux: add sulogin to alternatives list
gzip: Avoid host contamination during build
classextend: Fix crosssdk remapping for multilib
combo-layer: fix revlist taking into account file_filter
update-rc.d: fix to handle priority numbers correctly
eglibc: Fix configure when re-building with gold
fontconfig: enable 64 bit file support
freetype: enable 64 bit file support
busybox: fix meta-yocto's bbappend's FILESEXTRAPATH
qemu/local.conf.sample: Add sdl PACKAGECONFIG
binutils: Fix building nativesdk binutils with gcc 4.9
cryptodev-tests: recipe for cryptodev test suite based on OpenSSL
cryptodev-module: recipe for out-of-tree cryptodev device driver
cryptodev-linux: create common .inc file to be shared by module and tests
cryptodev-linux: move to recipes-kernel to be shared with module and tests
mesa-demos: Specify the lib dir properly.
mesa-demos: Specify the lib dir to locate glut libraries
qemu: define PACKAGECONFIG[] for ssh2
gdb: add PACKAGECONFIG for babeltrace
rt-tests: Fix warning flag typo
rpm: Fix rpm -V usage
adt_installer: run autoreconf before configuring opkg
git: Fix various makefile flags
ca-certificates: generate CAfile for -native in do_install
curl: remove inapporpriate file from curl release
curl: make PACKAGES match with FILES/RRECOMMENDS
freetype: disable harfbuzz
syslinux-native: fix parallel building issue
runqemu-internal: add "console=ttyS0" to ramfs image kernel parameters
distro_features_check.bbclass: fix wrong indentation
bzip2: fix ptest execution failure
lttng-modules: Fix build with older kernels for 2.3.3 as 2.4.0
tcf-agent: add systemd support
defaultsetup: enable blacklist by default
gtk+: Add PACKAGECONFIG for directfb
lttng-modules_2.3.3.bb: Fix build on ARM/gcc-4.9
gst-plugins-good: add PACKAGECONFIG for x11
gst-plugins-bad: add PACKAGECONFIG for schro, dc1394 and faac
gstreamer1.0-plugins-good: add libxfixes and libxdamange to x11 depends
attr: Fix uclibc builds
gcc: Handle uclibc linker relocation for multilib support
openssh: add /var/log/lastlog to volatile list
package_manager: Fix NoneType Object on do_populate_sdk
package_manager: Fix Argument list too long
uclibc: Set MULTILIB_DIR based on baselib
libiconv: Fix B != S with uclibc builds
mmc-utils: fix compilation failure for mips64 target.
perl: fix missing Module::Metadata
python3: Revert python-config to distutils.sysconfig
python3: Substitute correct python version in shebang
distutils.bbclass: only modify *.py file if it contains path to be removed
qt4: Explicitly disable sqlite2
ldconfig-native: also default to lib32 and lib64 directories
serial-getty service: Add xterm as default TERM
wpa-supplicant: add libgcrypt as a dependencie
xinput-calibrator: fix XDG launch
xdg-utils: reinstall xdg-terminal
procps: Do not detect 32/64 bit compiler options
curl: Backport a fix for a build issue
systemd: Check for HAVE_POSIX_FALLOCATE
distrodata.bbclass: Fix checkpkg functionality
sstate-cache-management: Minor cleanup of help text
initscripts: Fix PR reversal
kernel: don't populate source symbolic link
bind: add support for read-only rootfs
native.bbclass: Override TARGET_ flags too
report-error: Add posting in the public note
gsettings-desktop-schemas: add missing dependency on intltool-native
console-tools: Remove floating runtime dependency on flex
oprofileui-server_git: add avahi-daemon to RDEPENDS list
pixbufcache: add error exit in pixbufcache_sstate_postinst
grub-efi: Use a variable to specify built-in grub modules.
openssh-sshd: host contamination fix
grub git: workaround debugedit problems
make menuconfig work for recent xfce environment
linux-yocto/3.14: aufs, edgerouter config and -rt
recipe_sanity.bbclass: avoid error when running 'bitbake -e'
scripts/send-error-report: simple hack to use proxy from the enviroment
icecc: don't create unnecessary 'ice' dirs in sysroots when disabled
shadow: fix building systemd with useradd-staticids.bbclass enabled
libav: Add libsdl to DEPENDS only when x11 is enabled
libnotify: add dbus-glib dependency
apr: remove the use of ${SHELL} to avoid bash/dash confliction
bitbake: fetch2/hg: Fix missing proto param for hg checkout with user and pw
bitbake: data_smart: Fix an unusual variable reference bug
bitbake: fetch2/perforce: Ensure command has a default
bitbake: fix cloning of mercurial repository with username and
password specified in url
bitbake: Fix refetch of local files when they are read only
bitbake: HG Fetch with username and password in url
bitbake: bitbake-diffsigs: Fix runtime error when no arguments are given
bitbake: runqueue: Fix task weighting algorithm
bitbake: runqueue: Fix handling of zero priority task
lib/oe/sdk: Ensure target directory exists before creating the link
mega-manual.sed: changed 1.6 to 1.6.1 for support of that release.
documentation: Updated Manual Revision Tables for 1.6.1 point release.
poky.ent: Updated variables to support a 1.6.1 release.
dev-manual: Added "Properly Versioning Pre-Release Recipes" section.


--
Elizabeth Flanagan
Yocto Project
Build and Release

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

