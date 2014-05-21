Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C190E00B85; Wed, 21 May 2014 13:08:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.128.170 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ve0-f170.google.com (unknown [209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66963E0077C
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 13:08:21 -0700 (PDT)
Received: by mail-ve0-f170.google.com with SMTP id db11so3208322veb.1
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 13:08:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=9d+LA2EdzDzBrrGzLS7xSNQRbJmpYRG1YTG0l4dRBEY=;
	b=ScSeoRGtCvrKpsJQMyuzCmihlRrk48wQfKDyKKn1cDm8OEqOsPlINF3fWcIwD07FQu
	L28KDT+3ccxexHIrjZB7eOlet4sFWrWus71Awa7QYyXXlFsfGlD7Cn4hbtgSqzfAUBZF
	YPSxBEJNMLvXbT18+LTkuXhxhKtJJKxCUXyE1z3UdtgJwEnvlmS2YSlLE1r5i+9Me482
	FmaxYP39XftkvDroqfjINl46IIMxKBC14jw752efDonHcbKE2YAv5o3SYbpQfmu41go5
	CoiPTxV41xumk45j5wv0OiwKWaDhmwWi1rnld6CtUKQxkZ5L1WnXc/MejKJcZJ+9powS
	RaUw==
X-Gm-Message-State: ALoCoQmMpk68Njn7lRUztiPNT78QzQ0dGnrdfvsecHlkX6W6v7OMGm4rvH/QlsKG/i1tgvHFkLoV
MIME-Version: 1.0
X-Received: by 10.58.132.228 with SMTP id ox4mr2275127veb.54.1400702900701;
	Wed, 21 May 2014 13:08:20 -0700 (PDT)
Received: by 10.52.243.73 with HTTP; Wed, 21 May 2014 13:08:20 -0700 (PDT)
Date: Wed, 21 May 2014 13:08:20 -0700
Message-ID: <CAPhnLPDY6GHZrWjfdVd1Ac_4hXfmejUkVnPx6oKtLEYp0WPBJA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: Yocto Project 1.5.2 (dora 10.0.2) Released
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
X-List-Received-Date: Wed, 21 May 2014 20:08:25 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

The latest point release of the Yocto Project, 1.5.2 (dora 10.0.2) is now
available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.2/poky-dora-10.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.5.2/poky-dora-10.0.2.tar.gz

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.2/RELEASENOTES

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Elizabeth Flanagan
Yocto Build and Release
<elizabeth.flanagan@intel.com>


--------------------
yocto-1.5.2 Errata
--------------------

Release Name: poky-dora-10.0.2
Branch:  dora
Tag:  dora-10.0.2
Hash:  0a6f0dbf9476dcb4a17a210af90e2dd1a43b61aa
md5:  b52d13ef0ad4d520ffe2aa718a561a54
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.2/poky-dora-10.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.5.2/poky-dora-10.0.2.tar.bz2

Release Name: eclipse-poky-juno-dora-10.0.2
Branch:  dora
Tag:  dora-10.0.2
Hash:  79cd3c6ff119526f3f85567253450d2e857afed0
md5:  c7a4b94223ae0bcb857f63f514e9bf71
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.2/eclipse-poky-juno-dora-10.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.5.2/eclipse-poky-juno-dora-10.0.2.tar.bz2

Release Name: eclipse-poky-kepler-dora-10.0.2
Branch:  dora
Tag:  dora-10.0.2
Hash:  e842d41f05066df1533a2788e650f0be213ad5b5
md5:  d84dcd5b8bf00493ab2344a1d42309f5
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.2/eclipse-poky-kepler-dora-10.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.5.2/eclipse-poky-kepler-dora-10.0.2.tar.bz2

Release Name: meta-qt3-dora-10.0.2
Branch:  dora
Tag:  dora-10.0.2
Hash:  4772424ab69908d4e3b9d6d4717ca889468e6acd
md5:  1ed48e11662ac5998d301534afa9ede9
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.2/meta-qt3-dora-10.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.5.2/meta-qt3-dora-10.0.2.tar.bz2

--------------------
Security Fixes
--------------------
- openssl: backport fix for CVE-2014-0160
- Security Advisory - openssl - CVE-2013-6449
- Security Advisory - openssl - CVE-2013-6450
- Security Advisory - openssl - CVE-2013-4353
- gnutls: CVE-2014-0092 correct return codes
- icu: CVE-2013-2924
- acpid: CVE-2011-1159
- xinetd: CVE-2013-4342

--------------------
Bitbake Fixes
--------------------
- bitbake: fetch2/__init__.py: let try_mirror_url return correct value
- bitbake: fetch2: Fix mirror repo tarball creation
- bitbake: bitbake: fetch2/git: Anchor names when using ls-remote
- bitbake: fetch2: Don't allow '/' in user:pass, fix branch containing '@'
- bitbake: hob/hoblistmodel: check if vals of packages/recipes names
are not None
- bitbake: imagedetailspage: Fix crash with more than 15 layers
- bitbake: parse/ConfHander/BBHandler/utils: Fix cache dependency bugs
- bitbake: data: Fix output inconsistencies for emit_var
- bitbake: runqueue/bitbake-worker: Fix dry run fakeroot issues

--------------------
Changelog
--------------------
- mega-manual.sed: Updated the link version to 1.5.2
- documentation: Updated the manual revision history tables for 1.5.2
- poky.ent: Updated the variables to support the 1.5.2 point release.
- bitbake: fetch2/__init__.py: let try_mirror_url return correct value
- bitbake: fetch2: Fix mirror repo tarball creation
- build-appliance: Update to Dora 1.5.2
- build-appliance-image: Update to head revision
- make: fix invoking makeinfo failed at do_install time
- bitbake: bitbake: fetch2/git: Anchor names when using ls-remote
- mesa: double check for eglplatform.h
- openssl: bump PR
- sstatesig: Anchor inherits class tests
- classes/image: ignore modules.* changing during multilib image construction
- classes/kernel: move module postinst commands to kernel-base
- sstatesig.py: Fix image regeneration issue
- openssl: backport fix for CVE-2014-0160
- Security Advisory - openssl - CVE-2013-6449
- Security Advisory - openssl - CVE-2013-6450
- Security Advisory - openssl - CVE-2013-4353
- Revert "buildhistory_analysis: fix error when comparing image contents"
- eglibc 2.18: powerpc: Fix time related syscalls
- mesa: build fix for gallium-egl
- image_types.bbclass: use 4096 instead of 8192 bytes-per-inode
- Revert "poky.ent, ref-manual: Updated list of Fedora packages"
- poky.ent, ref-manual: Updated list of Fedora packages
- ref-manual: Fixed error in example for export XDG_RUNTIME_DIR
- ref-manual: Added directfb to DISTRO_FEATURES list chapter.
- license.bbclass: fix copying license directories failed
- lsbtest: fix comparison bashism
- iproute2: de-bash its scripts to remove the bash dependency
- libomxil: Fix link issue for gst-omx
- grub: move xz to DEPENDS list from RDEPENDS list
- avahi: handle SO_REUSEPORT not being available
- Revert "license.bbclass: fix copying license directories failed"
- gnutls: fix failure during do_compile
- gnutls: Fixed bug that prevented the rejection of v1 intermediate CA
certificates.
- gnutls: CVE-2014-0092 correct return codes
- dev-manual: Fixed code block example for ARCHIVER.
- bitbake: fetch2: Don't allow '/' in user:pass, fix branch containing '@'
- systemd: journald fix ignored disk space restrictions
- gcc: Include patch scheduled for GCC 4.8.3 to fix epilogue on ARM
- pulseaudio: only package consolekit module when x11 is enabled
- cpan-base: Add vardepvalue to get_perl_version function
- binconfig: mangle ${base_libdir}
- poky.conf: add Debian 7.3 to SANITY_TESTED_DISTROS
- poky.conf: add Debian 7.2 to SANITY_TESTED_DISTROS
- base.bbclass: pull in file-native for src.rpm
- x11vnc: fix CAPS_LOCK issues
- wpa-supplicant-2.0: don't exit in pkg_postinst
- eglibc-locale: Fix multilib builds to depend on the correct binutils
- eglibc-locale: Fix previous dependency change to properly work in
nativesdk case
- eglibc-locale: Fix depends on binutils
- terminal.bbclass: do not export PS1
- binutils: Also add autoconf-native to DEPENDS
- libsoup: Remove libproxy from DEPENDS
- grub: add PACKAGECONFIG for device-mapper
- guile: fix the depends for target recipes
- libpthread-stubs: should set ALLOW_EMPTY
- kconfig-frontends: fix the incorrect depends on gperf
- dbus: use PACKAGECONFIG for X11 and systemd
- meta/lib/oe/terminal.py: Don't pass non-supported
'--disable-factory' flag to gnome-terminal
- openssl: use PACKAGECONFIG to disable perl bits
- libav: add libpostproc to PROVIDES (for 0.8.x version only)
- gcc-4.8: Backport PR c++/57532 fix from 4.8.2
- systemtap: Add --enable-prologues to configuration
- runqemu: remove core-image-* whitelist
- Minicom depends on libiconv
- useradd.bbclass: add dependency on base-files
- openssl.inc: Install c_rehash utility with openssl
- gcc-4.8/libstdc++-v3: disable sdt
- xz: make the LICENSE info more accurate
- gcc-crosssdk.inc: Fix missing dependencies (such as libmpc-native)
- linux-libc-headers: fix MIPS klibc build error
- icu: CVE-2013-2924
- acpid: CVE-2011-1159
- xinetd: CVE-2013-4342
- multilib: Ensure we map the SYSTEMD_PACKAGES variable
- nativesdk.bbclass: support nativesdk to override with the
PACKAGES_DYNAMIC statement
- license.bbclass: fix copying license directories failed
- qemu: add bash and python to qemu's RDEPENDS
- grub: add explicit dependency on bison-native
- cogl-1.0: explicitly disable cairo
- pulseaudio: fix RDEPENDS traversal for consolekit
- ptest: ensure do_install_ptest_base task runs in fakeroot context
- populate_sdk: verify executable or dynamically linked library
- cairo: add/use packageconfig for valgrind support
- python, python-native: fix PARALLEL_MAKEINST failure
- subversion: fix build problem when sysroot contains '-D' or '-I'
- python: do not replace ccache in the middle of a path
- babeltrace: correct PV variable
- gcc-cross-canadian: Fix fortran build
- image.bbclass: Depend on virtual/kernel:do_deploy
- base/gcc-common: Ensure umask setting is consistent for shared workdir
- base.bbclass: Set umask 022 also for do_unpack task
- xinput-calibrator: add formfactor to RDEPENDS
- libav: install libraries to right directory when multilib is enabled
- coreutils 6.9: fix coreutils.texi
- qemu: add PACKAGECONFIG for vnc, libcurl, nss, uuid, curses, gtk+, libcap-ng
- qemu: explicitly disable xen support
- qemu: use PACKAGECONFIG to address xfsprogs dependency
- linux-firmware: add missing linux-firmware-iwlwifi-7260-7 package
- bluez4: added dependency on 'libsndfile1'
- avahi: add leading space to RRECOMMENDS append
- x264: install libraries to right directory when enable multilib
- kconfig-frontends: add python to kconfig-frontends's RDEPENDS
- poky: Add Fedora-20 to supported distros list
- poky: Add Ubuntu-13.10 to supported distros list
- ltp: set PREFERRED_PROVIDER and rename runtests_noltp.sh script
- kernel.bbclass: Stop bundle_initramfs thwarting sstate cache and fix race
- Revert "kernel.bbclass: move bundle_initramfs after kernel_link_vmlinux"
- poky.ent: Fixed broken OE_LISTS_URL.
- poky.ent: Updated lists.linuxtogo.org with lists.openembedded.org
- eglibc-initial.inc: Drop duplicate include
- bitbake: hob/hoblistmodel: check if vals of packages/recipes names
are not None
- adt-manual: Deleted mis-leading sentence from configure section.
- poky.ent, documentation: Updated manual release dates.
- bitbake: imagedetailspage: Fix crash with more than 15 layers
- bitbake: parse/ConfHander/BBHandler/utils: Fix cache dependency bugs
- bitbake: data: Fix output inconsistencies for emit_var
- bitbake: runqueue/bitbake-worker: Fix dry run fakeroot issues
- libsoup-2.4: add intltool-native to DEPENDS

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

