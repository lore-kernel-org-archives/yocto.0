Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13622E0083A; Fri, 16 Jan 2015 08:47:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4340DE0083A
	for <yocto@yoctoproject.org>; Fri, 16 Jan 2015 08:47:43 -0800 (PST)
Received: by mail-vc0-f179.google.com with SMTP id le20so7035428vcb.10
	for <yocto@yoctoproject.org>; Fri, 16 Jan 2015 08:47:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=VaRYJQRkDHjweIhdz4Wzl+mO0lSnM9ZeGQ2Pwf/bOcQ=;
	b=FnAverD3ERiQCHNeoo91w1DJ6fAnTASHA5an1YuPCUvj30yUKfNlel2oYywGiYnuOc
	7J4paCI9UJxhjqgYcCfZWuypeBAiNKB94aH7FVx94D43OmywPW2nOLyH6XsF09B9SBKi
	aJ0LQekvyus73g+01dJcNxDGr7Ao8wKsjAZVod4tT54RHtC9QBCf0tHLfJ+9MMpo3krL
	Sua0g8WosGS9Hmno3iw7yHnHPkrILJHXeR6Olr7pVU4gmZ38FmJVXNl4vA1+BMY51HK+
	uaHjWPpRex9Bw5jsvxxHar+mILPCdG6z/uPR9EOtmow9q5T7JPKpOz4q9Z5NTVDNVanN
	eEUw==
X-Gm-Message-State: ALoCoQnjcCyzTOen1iwNS47xFHP+tdPhq2IlDl8vaUNs2lYGWbS8FCf7fZMo9Ikp2WBAdZ6qTleM
MIME-Version: 1.0
X-Received: by 10.52.150.17 with SMTP id ue17mr6684222vdb.11.1421426862724;
	Fri, 16 Jan 2015 08:47:42 -0800 (PST)
Received: by 10.52.29.146 with HTTP; Fri, 16 Jan 2015 08:47:42 -0800 (PST)
Date: Fri, 16 Jan 2015 16:47:42 +0000
Message-ID: <CAPhnLPCz+OkYsTR=XEXB5b=QmANqoV9nNh+__sBVm13FOydC6w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [ANNOUNCEMENT] Yocto 1.7.1 Released
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
X-List-Received-Date: Fri, 16 Jan 2015 16:47:49 -0000
Content-Type: text/plain; charset=UTF-8

All,

We are pleased to announce the first update to the Yocto Project "dizzy" 1.7.1
release.

This release contains 186 patches including 14 patches for known CVEs.

This release is available for download at:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.1/poky-dizzy-12.0.1.tar.bz2

or

http://mirrors.kernel.org/yocto/yocto/yocto-1.7.1/poky-dizzy-12.0.1.tar.bz2

Thanks to everyone for all their hard work

Elizabeth Flanagan
Yocto Project Release Engineering

--------------------
yocto-1.7.1 Errata
--------------------

Release Name: poky-dizzy-12.0.1
Branch: daisy
Tag: dizzy-12.0.1
Hash: 6dd21a9f152a93e2df1178d7a5bd903d7edcf4be
md5sum: 86effdebe9eca767f8510dbd5718da88
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.1/poky-dizzy-12.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.7.1/poky-dizzy-12.0.1.tar.bz2

Release Name: eclipse-poky-juno-dizzy-12.0.1
Branch: daisy
Tag: dizzy-12.0.1
Hash: 26bfc407781aa185f244a47ba63120343cee4a37
md5sum: 455faf5052e4469a84865651ab64c827
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.1/eclipse-poky-juno-dizzy-12.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.7.1/eclipse-poky-juno-dizzy-12.0.1.tar.bz2

Release Name: eclipse-poky-kepler-dizzy-12.0.1
Branch: daisy
Tag: dizzy-12.0.1
Hash: 4a167fd662262ebdaa3cf0d332ac0debb52d7904
md5sum: deb57474623b767d1fe6c017ef9e7205
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.1/eclipse-poky-kepler-dizzy-12.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.7.1/eclipse-poky-kepler-dizzy-12.0.1.tar.bz2

Release Name: meta-qt3-dizzy-12.0.1
Branch: daisy
Tag: dizzy-12.0.1
Hash: 3016129d90b7ac8517a5227d819f10ad417b5b45
md5sum: 5fe6edf826a3b28b15ca7a274b23a3c4
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.1/meta-qt3-dizzy-12.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.7.1/meta-qt3-dizzy-12.0.1.tar.bz2

--------------------
Security
--------------------

bind:
    CVE-2014-8500
glibc:
    CVE 2014-7817
    CVE 2012-3406
cpio:
    CVE-2014-9112
gst-ffmpeg:
    CVE-2014-8548
    CVE-2014-8541
python:
    CVE-2014-7185
nss:
    CVE-2014-1568
serf:
    CVE-2014-3504
curl:
    CVE-2014-3620
    CVE-2014-3613
subversion:
    CVE-2014-3528
    CVE-2014-3522
wget:
    CVE-2014-4887

--------------------
Patches
--------------------
build-appliance-image: Update to dizzy head revision
poky.conf: Update DISTRO_VERSION for 1.7.1
bitbake: fetch2/git: Allow other namespaces than refs/heads to be searched.
tcmode-default.inc: use GCCVERSION for gcc-source
default-distrovars: add gcc-source recipe to the GPLv3 whitelist
gcc: stub do_fetch instead of removing it
gcc: Rework shared work
packagegroup-self-hosted: add git-perltools
bind: fix for CVE-2014-8500
lttng-modules: fix mm_compaction_isolate_template build
linux-yocto/3.14: update to 3.14.26, integrate ltsi and -rt updates
linux-yocto/3.14: update to v3.14.24
linux-yocto/3.10: update to v3.10.62
linux-yocto/3.10: update to v3.10.59
linux-yocto/3.10: 8250/8250_dw: fix compile failure due to stable/Yocto conflict
image: Avoid race over directory creation
report-error: Handle the case no logfile exists
sysvinit-inittab: Disable the carrier detect requirement for serial consoles
binutils: several security fixes
buildtools-tarball: restore missing git tools
lbdrm: fix build issue.
libxcb: fix socket writes
security_flags: Fix typo for cups
busybox-mdev: Install missing find-touchscreen.sh
wic: IMAGE_BOOT_FILES format checks in bootimg-partition source
systemd: backport patch to fix reading journal backwards
font-util: Fix incorrect PKG_CONFIG_PATH
package.bbclass: do variable fixups even when FILES was set
kernel.bbclass: Remove bashism
image_types.bbclass: Populate cpio /init as symlink
shadow: disable nscd feature when glibc is not built with spawn posix functions
glibc: CVE 2014-7817 and 2012-3406 fixes
openssh: move setting LD to allow for correct override
qemu: disable vte if gtk is also disabled
gstreamer1.0-* fix configure for out of tree build on git recipes
gst-plugins-bad: add PACKAGECONFIG for the RTMP plugin
apr: avoid absolute paths for grep
bluez-hcidump: select provider as bluez4 or bluez5
python3-core: Fix minimal python3 install
python: add python-codecs runtime dependency for python-json
cwautomacros: stub do_configure to avoid cleaning
coreutils-native: don't install groups
gzip: fix MakeMaker issues with using wrong SHELL/GREP
lzo: add debian patch for alignment issue
util-linux: add switch_root to alternatives list
Revert "busybox : fix do_compile failed on qemumips when DEBUG_BUILD (ICE)"
openssh: fix using the original config files in srcdir
package_manager.py: fix arguments to string format
eglibc: modified option-groups.h generation
mesa-demos: Move util to the front of the SUBDIRS variable.
glew: Additional fix for generation of glew.pc.
bootchart2: fix to find collector correctly in case of multilib
libxslt: create wrapper to avoid host system referencing
kernel-yocto.bbclass: fix shell syntax error
gnutls: disable tpm
package_manager.py: check the result of create_index
compress_doc.bbclass: support update-alternatives
metadata_scm: Fix crash due to uncaught python exception
package.bbclass: Create empty key/value if not there for shlib_provider
resolvconf: add fixes for busybox and make it work
connman-gnome: fix dbus interface name
gdk-pixbuf: use ptest-gnome
qemu: Add missing wacom HID descriptor
useradd.bbclass: set PSEUDO_PASSWD consistent with root directory
bitbake.conf: pseudo fall back to last-resort passwd files
pseudo: provide fallback passwd and group files
pseudo: default --without-passwd-fallback
image.bbclass: search both rootfs and native staging for passwd files
pseudo: support multiple search directories in PSEUDO_PASSWD
pseudo: support --without-passwd-fallback configuration option
procps: install symlink under /etc/sysctl.d in case of systemd
bind: clean host path in isc-config.sh
e2fsprogs: clean host path in compile_et, mk_cmds
bash: clean host path in bashbug
libpam: Stop a QA WARNING when building multlib version
python3: several fixes for cross compiling
perl: fix PERL5LIB settings
dtc: old SRC_URI died, changing to new working one
toolchain-shar-template.sh: fix the text files in the top dir
bind: use PACKAGE_BEFORE_PN instead of PACKAGES_prepend
gcc-4.9: fix the compile failure of 'defaults.h' not found
rpm: fix the rpm addsign function
rpm: realpath is required before expanding _dbpath in chroot
toolchain-scripts.bbclass: Export KCFLAGS to ensure sysroot is provided
docbook-xsl-stylesheets: fix do_configure typo
classextend: Do not extend for that already have multilib prefix
systemd: add PACKAGECONFIG for 'audit'
systemd: fix libidn floating dependency
apr-native: Set CONFIG_SHELL to /bin/bash
systemd: avoid using system-auth
libtool: remove build host paths from installed libtool
beecrypt: add option --with-dev-dsp
scripts: use '/usr/bin/env' in shebangs with python
python-pygtk: Clean up incorrect "fix"
populate_sdk_base: improve POSIXLY_CORRECT compat
ncurses, busybox, cml1.bbclass: Fix menuconfig display corruption
nfs-utils: change owner/group of directories in do_install
perl: set the perl libraries search path
gcc: Fix intermittent failures during configure
perl: Enable rebuilds to account for configuration changes
gcc: backport two patches to fix ICE in dwarf2out_var_location
toaster.bbclass: read elapsed time from the stats file
perl: Fix bug when installs SDK in custom directory
docbook-xsl-stylesheets: add perl to RDEPENDS
python-smartpm: report warn rather than error during install with --attempt
man-pages/shadow: resolve man pages confliction
shadow: enable support for subordinate IDs
iproute2: backport a patch to make adding vxlan link success
python-pygtk: Restore pkg-config file
pciutils: Fix multilib header conflict - pci/config.h
image_types.bbclass: Make ubi depend on ubifs
kmod: fix debuginfo is missing in shared library
systemd: don't add files and dependencies from units Conflicts
package_manager: Fix BAD_RECOMMENDATIONS for opkg
bind: fix to use correct environment file in service file
udev: fix uevent-helper disable
BusyBox: Fixing broadcast address is not fed and rightly initialized
ldconfig-native: fix a endian-ness bug
gdb-cross: build with python support
systemd: don't move libgudev around, it breaks libgudev-1.0.la
multilib.bbclass/package_manager.py: fix <multilib>-meta-toolchain build failure
opkg: fix remove pkg with --force-removal-of-dependent-packages failed
mtd-utils: Fix alignment trap triggered by NEON instructions
python3: do not replace ccache in the middle of a path
multilib.bbclass: fix incorrect TARGET_VENDOR in multilib image
classes/image: remove obsolete MULTILIB_VENDORS
elfutils: fix elf_cvt_gnuhash
which-2.18: Use foreign strictness to avoid automake errors
image.py: Fix error in graph sorting
mklibs: Fix loader for mipsel
glibc: Delete ldconfig when USE_LDCONFIG is not set
rm_work: Speed up rootfs/populate_sdk removal
python: fix ssl import error
cpio: fix bug CVE-2014-9112 for cpio-2.11
cpio: fix bug CVE-2014-9112 for cpio-2.8
kernel.bbclass: Create modules directory even if there is no modules installed
gst-ffmpeg: fixes for CVE-2014-8548 and CVE-2014-8541
wic: Use overhead factor when creating partitions from rootfs directories
bitbake: progressbar: use '/usr/bin/env' in shebangs with python
bitbake: bitbake-worker: exit normally when SIGHUP
bitbake: event: fix resetting class handlers object
bitbake: data: Handle BASH_FUNC shellshock implication
bitbake: runqueue: Fix 100% cpu use after keyboard interrupt
bitbake: buildinfohelper: Make sure we use the orm defined value for loglevel
bitbake: prserv: Use WAL mode
bitbake: prserv/serv: Ensure sync happens in the correct thread
bitbake: prserv: don't wait until exit to sync
buildtools-tarball: package all of Python
bitbake: bitbake-user-manual-metadata.xml: Updated do_package_write example
bitbake: bitbake-user-manual-metadata.xml: Added [eventmask] flag information.
bitbake: bitbake-user-manual: Updated copyright to 2015.
mega-manual.sed: Updated strings to support a 1.7.1 release.
poky.ent: Updated various variables to support the 1.7.1 release.
documentation: Updated manual tables for a 1.7.1 date.
dev-manual: Added link to ptest wiki page into Ptest section.
bsp-guide: Fixed ambiguous sentence.
profile-manual: Updates to the LTTng Documentation section.
dev-manual: Fixed broken link to the allarch class.
poky.ent: Updated the YOCTO_RELEASE_NOTES variable to new form.
poky.ent: post release fix of the POKYVERSION_COMPRESSED variable.
babeltrace: Backport fix for unaligned integer
xkeyboard-config: Inherit gettext
package_manager: DpkgPM fix populate_sdk
python: Fix CVE-2014-7185
shadow-securetty: add ttyAM[0-3] serial ports
wic: Update bootimg-partition to use bootimg_dir
wic: Remove special-case bootimg_dir
Revert "wic: set bootimg_dir when using image-name artifacts"
wic: Update the help text to include -D (--debug)
wic: Don't allow mkfs to fail silently in partition command
nss: CVE-2014-1568
curl: Fixup line ending merge issues
serf: uprev to 1.3.7 for fixing CVE-2014-3504
tzdata: update to 2014j
tzcode: update to 2014j
curl: Security Advisory - curl - CVE-2014-3620
curl: Security Advisory - curl - CVE-2014-3613
subversion: Security Advisory - subversion - CVE-2014-3528
subversion: Security Advisory - subversion - CVE-2014-3522
bitbake: siggen: Fix shared work checksum mismatch/rebuild issues
bitbake: data_smart.py: fix variable splitting at _remove mechanism
meta-environment: Fix config-site with a multilib config
readline: Patch for readline multikey dispatch issue
wget: Fix for CVE-2014-4887
license.bbclass: canonicalise the licenses named with 'X+'
poky.conf: add Debian 7.7 to SANITY_TESTED_DISTROS
nativesdk-cmake: Adjust toolchain paths dynamically
systemd: Use ${ROOT_HOME} instead of /root

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

