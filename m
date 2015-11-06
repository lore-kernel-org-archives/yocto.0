Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA0CAE007D5; Fri,  6 Nov 2015 15:02:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C8F0E007C9
	for <yocto@yoctoproject.org>; Fri,  6 Nov 2015 15:02:40 -0800 (PST)
Received: by ioc74 with SMTP id 74so71525330ioc.2
	for <yocto@yoctoproject.org>; Fri, 06 Nov 2015 15:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=4RMWrCcN3/GugqV1UA1gAQVb8rLzjjVewzTnY7TIyxw=;
	b=UoiG49XEkiIS6OI5yWje/VF5kwjNRXJvzgyubbpoeHpSoBjrtep3G5Dp1mxHM7hhj+
	15BcgqVOfuqxq3fJO6GYbghwNxeW5Nv64CqxGkNrX0eCQRVlnMLpZGok46LBe1rNTKVt
	JtBMPgdHoCZVhTx796OkZ6GwfJfq9RsoEjds/Qj+3HJLS9cl0i9Fhcz68YYBp8/eAGnq
	LOiz5gGBmre8i+s2WLfWhz1DadkeCRMSJ90BaHSyU2fKQ5MkoCBOMrrPWduwRkrUbfm4
	AKRvTbWVv6VVNQZkkFCAT5/qLKdXDgm0G3JxJAibr25YkrQf1KdeE1Fzw+AZulodwnGS
	mDZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=4RMWrCcN3/GugqV1UA1gAQVb8rLzjjVewzTnY7TIyxw=;
	b=Vb140TMZkGUGsEiEx/kOWHW8uyp9oILB2qTxUpvWoy6mK80KtkFOFyX+gD0DRpqv1q
	MaNq5fQkQXpKgDeO5cXUA9FgpZM84t3jUvVCiTlwRag5e1yHqinNExUWhWe5TywtB14U
	y3xPy2qbMGPXj70wSycxMDJymPXpgxDmG7txSPiGKIMY5yxtvL34DpUc1yM9S/1VWtKA
	zovkyEx2fIcMYL2DKqZ3JzqOyk2n4HfLUJGgc7aW2xMvRUqzdVQixYk1vmyYxx0hcixR
	nxF8yVGzNIb+oAGYqwZHlnseH4cr3gXUDUuXRuNz9vAodMhIP2jmX1RHOiKm5Gam6Pqn
	Rr+g==
X-Gm-Message-State: ALoCoQl8Qs2HXA91n/c019tDdhJ1faJJ07sVkYvoIE0YqZwOiZsXSHyw/6qi/J8CHu7+AhkP3cEx
MIME-Version: 1.0
X-Received: by 10.107.167.197 with SMTP id q188mr17117128ioe.141.1446850959927;
	Fri, 06 Nov 2015 15:02:39 -0800 (PST)
Received: by 10.107.20.204 with HTTP; Fri, 6 Nov 2015 15:02:39 -0800 (PST)
Date: Fri, 6 Nov 2015 23:02:39 +0000
Message-ID: <CAPhnLPC=YsQoQzvpjjoxD6Vif2Uke3qNZ4raTjx78VeJNZKXYg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [ANNOUNCEMENT] Yocto Project 1.8.1 (fido 13.0.1) Released
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
X-List-Received-Date: Fri, 06 Nov 2015 23:02:44 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

The latest release of the Yocto Project 1.8.1 (fido-13.0.1) is now available
for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.8.1/poky-fido-13.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8.1/poky-fido-13.0.1.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.8.1/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW40_2015-09-30_FullPass_1.8.1_b74ea963cefffad9fbd91d4eb9b240f6a8c86cd0

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Elizabeth Flanagan
Yocto Project
Build and Release

---------------------
yocto-1.8.1 Errata

Release Name:  eclipse-poky-kepler-13.0.1
Branch: fido
Tag: fido-13.0.1
Hash:  cf60ac293629fc8ecd6c4eb3709a6f334b499d0c
md5: d4dec0668d4df999a376d38f9b203259  eclipse-poky-kepler-fido-13.0.1.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.8.1/eclipse-poky-kepler-fido-13.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8.1/eclipse-poky-kepler-fido-13.0.1.tar.bz2

Release Name:  eclipse-poky-luna-13.0.1
Branch: fido
Tag: fido-13.0.1
Hash:  45aa5c77523bdf051d548fff4305382942db2ebb
md5: ebcf90e66bae33519387f299ca0c908a  eclipse-poky-luna-fido-13.0.1.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.8.1/eclipse-poky-luna-fido-13.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8.1/eclipse-poky-luna-fido-13.0.1.tar.bz2

Release Name:  meta-qt3-13.0.1
Branch: fido
Tag: fido-13.0.1
Hash:  3016129d90b7ac8517a5227d819f10ad417b5b45
md5: 233e6dc05a4ab6287a811b407ed35462  meta-qt3-fido-13.0.1.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.8.1/meta-qt3-fido-13.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8.1/meta-qt3-fido-13.0.1.tar.bz2

Release Name:  poky-13.0.1
Branch: fido
Tag: fido-13.0.1
Hash:  b74ea963cefffad9fbd91d4eb9b240f6a8c86cd0
md5: e2c16502edf37d933c72e155f2ee4e27  poky-fido-13.0.1.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.8.1/poky-fido-13.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8.1/poky-fido-13.0.1.tar.bz2

-------
Security Fixes
-------
libunwind: Security Advisory - libunwind - CVE-2015-3239
libtasn1: CVE-2015-3622
openssh: CVE-2015-6563 CVE-2015-6564 CVE-2015-6565
bind: CVE-2015-1349 CVE-2015-4620 CVE-2015-5722
gnutls: CVE-2015-3308
icu: CVE-2014-8146-CVE-2014-8147
gdk-pixbuf: Security Advisory - gdk-pixbuf - CVE-2015-4491
bind: backport patch for CVE-2015-5477
qemu: fix CVE-2015-3209
qemu: backport patches to fix CVE issues
wpa-supplicant: backport a patch to fix CVE-2015-1863
wpa-supplicant: Fix CVE-2015-4141, CVE-2015-4143, CVE-2015-4144,
CVE-2015-4145, CVE-2015-4146
wpa-supplicant: Apply fix CVE-2015-4142
unzip: fix four CVE defects
wpa-supplicant: Fix CVE-2015-4142
gst-plugins-bad: fix CVE-2015-0797
dbus: CVE-2015-0245: prevent forged ActivationFailure
rpm: Fix CVE-2013-6435
rpm: Fix CVE-2014-8118
libxml2: Security Advisory - libxml2 - CVE-2015-1819
qt4: fix CVE issues
libsndfile: Security Advisory - libsndfile - CVE-2014-9496
rsync: backport a patch to fix CVE-2014-8242
grep: fix CVE-2015-1345
gpgme: fix CVE-2014-3564
ppp: Security Advisory - CVE-2015-3310
qemu: fix CVE-2015-3456
glibc: CVE-2015-1781: resolv/nss_dns/dns-host.c buffer overflow
unzip: Security Advisory -CVE-2014-9636 and CVE-2015-1315
e2fsprogs: fix the CVE-2015-1572
elfutils: Security Advisory - CVE-2015-0255
logrotate: remove logrotate-CVE-2011-1548.patch
libxml2: remove libxml2-CVE-2014-3660.patch
nspr: remove nspr-CVE-2014-1545.patch
libxfont: Security Advisory - libxfont - CVE-2015-1804
libxfont: Security Advisory - libxfont - CVE-2015-1803
libxfont: Security Advisory - libxfont - CVE-2015-1802
libarchive: Security Advisory - libarchive - CVE-2015-2304
less: fix CVE-2014-9488
rsync: backport a patch to fix CVE-2014-9512
busybox: remove CVE-2014-9645 patch (already upstream in 1.23.x)
xorg-server: Security Advisory - xorg-server - CVE-2015-0255

-------
Fixes
-------
bitbake: toaster: buildinfohelper Skip packages we have no build info about
ref-manual: Fixed typo in 1.6 migration section for BitBake
poky.ent: Added "findutils" and "which" packages to Fedora essentials.
ref-manual: Fix to QA error message.
ref-manual: Fixed grammar issue in the oelint.bbclass section.
ref-manual: Updated UNKNOW_CONFIGURE_WHITELIST variable
kernel-dev: Added kernel-devsrc information for building on target
poky.ent: Updated the YOCTO_RELEASE_NOTES variable
ref-manual: Updated the UNKNOWN_CONFIGURE_WHITELIST variable.
kernel-dev: Added new requirement for working with yocto-linux-custom.bb
ref-manual: Updated ARCHIVER_MODE and archiver.bbclass
ref-manual: Fixed "TBD" section cross-reference in KBUILD_DEFCONFIG
kernel-dev: Added new "in-tree" defconfig file section.
dev-manual: Added new section on "defconfig" files.
kernel-dev: Added detail to start of generating config file
documentation: Updated customization layers to point to XSL mirrors
ref-manual: Removed PRINC entry from the glossary
toaster-manual: Added detail for the URL to access Web Interface
ref-manual: Added new variable description UNKNOWN_CONFIGURE_WHITELIST
ref-manual: Updated EXTRA_IMAGE_FEATURES variable
dev-manual: Updates to kernel configuration in the "Kernel
Modification Workflow" section
dev-manual: Added a link to reference defconfig files.
dev-manual: Minor edits to "Configuring the Kernel" section.
ref-manual: Added new glossary description for KBUILD_DEFCONFIG.
adt-manual: Updated the "Getting the Images" section for eclipse-debug
ref-manual: Added and updated variables to support calling functions
ref-manual: Added 'ptest' to the list of Distro Features
ref-manual: Updates to the "Speeding Up the Build" section
ref-manual, dev-manual: Added info about make race work-around
ref-manual: Formatting fixes and tag fix.
ref-manual: Updates to BB_NUMBER_THREADS and PARALLEL_MAKE
ref-manual: Added descriptions for four new variables
adt-manual: Emphasis on populate_sdk as bitbake method for building toolchain
dev-manual: Updated requirements for writing a new test.
ref-manual: Added new variable description for ARCHIVER_MODE
build-appliance-image: Update to fido head revision
poky.conf: Bump version for 1.8.1 fido release
sstate: run recipe-provided hooks outside of ${B}
autotools.bbclass: mkdir ${B} -> mkdir -p ${B}
perf: mkdir ${B} -> mkdir -p ${B}
rootfs.py: show intercept script output in log.do_rootfs
postinst_intercept: allow to pass variables with spaces
rootfs.py: Allow to override postinst-intercepts location
wic: fix path parsing, use last occurrence
runqemu: Handle device names like tapX@NONE
oprofileui: Use inherit gettext
qemurunner: Improves checking for server and target IPs on qemus parameters
oeqa/utils/qemurunner: fix logging
oeqa/QemuRunner: don't use bb for logging
tzdata: update to 2015d
tzcode: update to 2015d
bitbake: bitbake: cooker: properly fix bitbake.lock handling
bitbake: runqueue: Add message to explain the problem if diffsigs
multiple tasks don't exist
gnome: move introspection options to gnomebase
systemd: Remove exporting special CPP
toasterconf: remove master as a branch option from fido release
glibc: Consider adding -Wno-error in cases when not using -O2
systemd: update SRC_URI
systemd-compat-units: set S correctly
systemd: update the status of configurable root patch
systemd: add PACKAGECONFIG for valgrind
systemd: recommend the vconsole setup units
systemd: add PACKAGECONFIG selinux
base.bbclass: Note when including pn with INCOMPATIBLE_LICENSES
gstreamer1.0-plugins-base: Need more buffers in output queue for
better performance
gstreamer1.0-plugins-base: Set need_segment after sink pad receive
GST_EVENT_SEGMENT
gstreamer1.0-plugins-base: Enhance SSA text lines parsing
gstreamer1.0-plugins-base: Don't set async of custom text-sink to false
gstreamer1.0-plugins-base: Make memory copy when video buffer's memory
is read only
gstreamer1.0-plugins-base: Do not change EOS event to GAP event
gstreamer1.0-plugins-base: Keep sticky events around when doing a soft reset
gstreamer1.0-plugins-base: Fix output buffer can't writable after
frame_map() issue
gstreamer1.0-plugins-base: Update video alignment after video alignment
gstreamer1.0-plugins-base: Handle audio/video decoder error
gstreamer1.0-plugins-base: Bug fix for id3demux issue
lib/oe/package_manager: fix opkg feed generation
cairo: make xlib and libxcb dependencies explicit
license_class: Fix choose_lic_set into incompatible license
perf: fix build breakage on kernels after 4.1
mesa: respect MESA_EGL_NO_X11_HEADERS even with x11 in PACKAGECONFIG
Revert "mesa: fix do_install_append"
u-boot: fix extern inline build errors for gcc 5
opkg-utils: use ${bindir} instead of hardcoding /usr/bin
run-postinsts: use ${localstatedir} instead of hardcoding /var/lib
initscripts: urandom: respect ${localstatedir} instead of hardcoding /var
opkg: read config file from ${sysconfdir} instead of /etc
rsync: use ${sysconfdir} instead of hardcoding /etc
dhcp: fix installed not shipped warning for lib32
opkg: solve inconsistency of using different lists directories
alsa-utils: assume the alsa storing is success if machine has no sound card
tzdata: Add marking for config files in recipe
wic: Make sure file exists before removing it
wic: remove intermediate partitions
perf: Fix config file conflict with 4.1 kernels
perf: fix build (and feature tests) for 4.1-rcX
volatile-binds: correct path of command umount
connman-conf: fix SRC_URI_append
bootchart2: add runtime dependency
nfs-utils: fix to start nfs-server correctly in systemd
systemd: fix immediate unmount of mountpoints not in fstab
volatile-binds: Set S to prevent QA warning
systemd-serialgetty: Set S to prevent QA warning
dpkg: Fix for Fedora22 and new versions of tar
openssl: upgrade to 1.0.2d
openssl: upgrade to 1.0.2c
unzip: drop 12-cve-2014-9636-test-compr-eb.patch
oeqa/bbtests: Fix to ensure DL_DIR is set
oeqa/bbtests: Fix race over DL_DIR and SSTATE_DIR
report-error.bbclass: Added file syncronization.
rootfs.py: Add check for kernel modules before running depmod
oe-selftest: devtool: fix test_devtool_update_recipe_git
mtd-utils: update to latest and fix static inlining
u-boot-mkimage: Backport fix from upstream to fix build with gcc-5
gdb: Add missing runtime dependency for python option
gnutls: use pkg-config to locate zlib
lib/devtool/standard: Fix patch cleanup
binutils: Add -momit-lock-prefix support
lib/oe/patch: Fix git patch application for source in subdirectory
oeqa/parselogs: Whitelist qemumips64 runtime error
testimage: Don't test xorg/vnc on qemuarm64
oeqa/parselogs: Whitelist qemuarm64 runtime errors
terminal.py: Allow devshell/menuconfig on recent gnome-terminal
bitbake: cooker: Fire BuildCompleted before finishing the command
subversion: Fix subversion-native on Fedora22
subversion: Add -P to CPPFLAGS
bitbake: bitbake-diffsigs: consider the situation where sigdata and
siginfo files having the same hash values
bitbake: fetch/git: Fix uri in git checkstatus
runqemu-internal: set mutual exclusiveness for serial and nographic options
runqemu-script: define console for qemuarm NFS booting
runqemu-internal: add support to boot arm64 qemu target via NFS
runqemu: fix MACHINE being detected as qemuarm for qemuarm64 kernel image
classes/license.bbclass: Improve generic license copy validation.
python3-ctypes: Fix cross compilation for arm targets
rpm: Fix lua 'print' statement capture
babeltrace: Fix invalid pointer free with trace collection
distutils: regenerate pyc files after being modified by sed
distutils-common-base: add to, don't set, FILES_${PN}
wayland: Fix hardlink corruption issue
valgrind: add configure option to build only 32-bit or 64-bit components
grub: Backport const qualifier fix for gcc-5
ncurses: fix native builds when host has gcc5
binutils: fix native builds when host has gcc5
license_class: Add explicity avoid of CLOSED license in validations
libpostproc: pass correct libdir
cracklib:Fix an error in the patch
sysstat: DEPENDS on base-passwd
gstreamer1.0-libav: fix build for i586 with gcc
valgrind: remove arm tests that don't compile
soc-family.inc: Add a default SOC_FAMILY value
base: Fix license checksum rebuild problems
oe-selftest: devtool: add a proper test to see if tap devices exist
devtool: if workspace layer exists, still ensure it's in bblayers.conf
devtool: fix build env command execution error handling
recipetool: ensure git clone is standalone when extracting
recipetool: avoid second-level subdir when extracting
devtool: update-recipe: check if source tree is a git repository
devtool: update-recipe: handle unversioned bbappends
devtool: add: use correct bbappend file name with -V option
devtool: handle . in recipe name
devtool: include bbappends in recipe parsing
devtool: modify: implement --no-same-dir
devtool: modify: use B=S if that is the default for the recipe
devtool: call parse_recipe with correct arguments
glibc: Fix __memcpy_chk on non-SSE2 CPUs
squashfs-tools: build and install unsquashfs as well
lttng-modules: Update to stable version 2.6.1
python3: fix build for shared object
openssl: drop the padlock_conf.patch
gnutls: remove --with-libz-prefix configure option
toolchain-scripts.bbclass: fix quoting for CCACHE_PATH
rootfs.py: Make set -x not break rootfs creation
sanity.bbclass: import subprocess in correct function
gtk-engines: Make gtk-engines-dev installable by dropping dependency
to not generated gtk-engines package.
rootfs.py: Improve rpm log_check_regex
zlib: clean up base_libdir symlink
icu-native: fix hard paths in native icu
pcmciautils: fix the parallel building issue
native.bbclass: avoid unintended substring replacement when setting PROVIDES
gstreamer1.0-plugins-bad: Move EGL requirement for Wayland
boost: properly fix do_boostconfig re-execution
systemd: removing workaround odering journal after remote-fs.target
ncurses: inherit pkgconfig
e2fsprogs: install populate-extfs.sh
mesa: fix do_install_append
glibc: Fix x32 make race
base: Avoid find race
alsa-tools: set CLEANBROKEN
kernel-yocto: propagate in tree defconfigs to WORKDIR
linux-yocto: fix race between checkout and meta data generation
kernel.bbclass: Fix race condition
directfb: Correct bashism
bind: remove 5 backport patches
libcap: Avoid passing "-e" to make
pcmciautils: fix for parallel build
curl: Fix wrong assumption about sizeof off_t on largefile systems
elfutils: enable fix-build-gcc-4.8.patch
texinfo: remove enumerate_greater_than_ten.patch
libaio: remove libaio-generic.patch
lttng-modules: remove bio-bvec-iter.patch
openssl: remove 3 patches
python3: remove sys_platform_is_now_always_linux2.patch
python-numpy: remove 2 dangling patches
sstate: Use SSTATE_DIR for FILESPATH
scripts/combo-layer: Fix exit codes and tty handling
combo-layer: handle unset dest_dir in sanity_check()
combo-layer: improve merge commit handling
bitbake: lib/bb/utils: fix several bugs in edit_metadata_file()
bitbake: lib/bb/utils: add function to get layer containing a file
split_and_strip_files: regroup hardlinks to make build deterministic
bitbake: bitbake-layers: ensure non-extended recipe name is preferred
bitbake: runqueue: pass finalized metadata to scenequeue callbacks
systemd: bring back the patch to customise root's $HOME
systemd: remove unused patches
bitbake.conf: add sed-native to ASSUME_PROVIDED
util-linux: Add lastb to alternatives
shadow: add 'util-linux-sulogin' to RDEPENDS
util-linux: split out util-linux-sulogin
groff: add runtime dependency on sed
autotools: Fix find races on source directory
kernel-devsrc: depends on virtual/kernel:do_install
gnu-efi: fix parallel issue
udev-cache: improve error handling
udev-cache: Remove unnecessary tar read from stdin
alsa-utils: Remove double dependency on udev
mkefidisk.sh: fix hanging on non-writeable device
mkefidisk.sh: use script mode when running parted
systemd 219 -> system 219-stable
oeqa/selftest/toaster: fix bad indent
populate_sdk_base: avoid executing empty function
uninative-tarball: delete the packagedata task
shadow: fix `su' behaviour
image: zap_empty_root_password doesn't handle passwd file in shadow case
ghostscript: add objarch.h for armeb
classes/populate_sdk_ext: disable network connectivity check
devtool: force use of bash when running build within extensible SDK
u-boot.inc: make sure all counter variables are properly unset
init-install-efi.sh: fix gummiboot entry installation
aspell: inherit binconfig-disabled
strace: fix build for aarch64
lsb: provide lsb-core-ARCH
crypto: use bigint in x86-64 perl
elfutils: fix an incorrect patch for 0.161
gst-player: Fix typo
libgpg-error 1.18: simplify tupple handling and add armv8b support
ppp: Add extra include dirs
package_manager: RpmPM: Fix scriptlet for rpm 4
pcmciautils: fix for parallel build
kexec-tools: Add support for build with x32 ABI in x86_64
nss: Fix build in x32 ABI
connman: Create connman.service at proper moment
libgpg-error: Fix native build on i686
tzdata: fix postinst
pango: fix postinst
dpkg: add triplet entry to fix build error for armeb
gst-ffmpeg: fix libav-9.patch
gst-ffmpeg: remove bogus patch that leads to build failures
gst-ffmpeg: fix internal-libav builds with inherit autotools-brokensep
libpcap.inc: remove obsolete libnl1 PACKAGECONFIG
libffi: Use proper compiler define for linux platform
libusb-compat: Include sys/types.h in usb.h
bluez4: Fix encrypt symbol namespace collision
shadow: split files needed for PAM use into separate package
python: Change python 2.7.9 to use libffi from the system
perl: module overload rdpends on overloading
security_flags.inc: elfutils on ARM fails with PIE flags
oe.sstatesig: align swspec handling with sstate.bbclass
useradd_base.bbclass: typo fixes (s/scucess/success/)
util-linux: add lastb.1 and nologin.8 to update-alternatives
lzop: Fix build using x32 ABI
uclibc: fix undefinition of '_dl_strchr' in libdl.a
nss: generate debug info
meta/lib/oe/utils.py: Corrected the return value of both_contain()
ref-manual; mega-manual: Edits to further define packaging process
ref-manual: Updated the "Image Features" section
dev-manual: Updates to add Luna support for Eclipse
ref-manual: Updated the ELF Binary QA warning message
dev-manual; ref-manual: Fixed &dash; issue
curl: several security fixes
fontcache: allow to pass different fontconfig cache dir
image.bbclass: Allow to remove do_rootfs ->
virtual/kernel:do_packagedata dependency
elfutils: fix build with -Os
bitbake: lib/bb/utils: add safeguard against recursively deleting
things we shouldn't
bitbake: fetch/git: Remove a possible trailing '/' in subpath
yocto-project-qs: Replaced GNOME Mobile with GTK+ wordings.
toaster-manual: Removed redundant video.
ref-manual: Added glossary entry for EXTERNAL_KERNEL_TOOLS
ref-manual: Updates to ELF binary QA warning
ref-manual: Removed FAQ question for GNOME Mobile.
ref-manual: Fixed some dashes in the user input examples.
ref-manual: Fixed some formatting on a user-input example.
ref-manual: Removed tag from profile-manual cross-ref
bsp-guide: Fixed link to the OpenEmbedded style guide.
adt-manual: fixed formatting for user-supplied data in example.
dev-manual: Applied some formatting for user input.
dev-manual: Fixed link to Toaster Manual.
dev-manual: Fixed a cross-ref link that used "here" as the link.
dev-manual: Added Toaster to the list of ways to develop.
dev-manual: Removed a cross-ref link to "here"
dev-manual: Updated branch descriptions for better manual maintenance
ref-manual: Removed "Intel Corporation" from the "Links" section.
dev-manual: Updated the poky definition in the "Terms" section.
ref-manual: Updates to ELF binary QA warning - review changes
dev-manual: Updated the "Enabling and Using the Tool" section
dev-manual: Updated "Requirements" section for creating partitioned images
ref-manual: Updates to the TCLIBC variable description
ref-manual: Fixed style sheet
initscripts: Remove /etc/volatile.cache on upgrade
base-files: Check for /run and /var/lock softlinks on upgrade
toolchain-scripts: Allow the CONFIGSITE_CACHE variable to be overridden

