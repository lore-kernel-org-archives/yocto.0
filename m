Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05FEFE00ED1; Fri, 12 Aug 2016 19:53:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A4A2E00E7A;
	Fri, 12 Aug 2016 19:53:35 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP; 12 Aug 2016 19:53:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,513,1464678000"; d="scan'208";a="155109558"
Received: from kdeems-mobl.amr.corp.intel.com ([10.254.33.23])
	by fmsmga004.fm.intel.com with ESMTP; 12 Aug 2016 19:53:34 -0700
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
From: Tracy Graydon <tracy.graydon@intel.com>
Message-ID: <57AE8BAE.20902@intel.com>
Date: Fri, 12 Aug 2016 19:53:34 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.1.1 (Krogoth 15.0.1) Released
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
X-List-Received-Date: Sat, 13 Aug 2016 02:53:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.1.1 (krogoth-15.0.1) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.1/poky-krogoth-15.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.1/poky-krogoth-15.0.1.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.1/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW32_-_2016-08-01_-_Test_Cycle_2.1.1_rc2

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Tracy Graydon
Yocto Project
Build and Release


-------------------
yocto-2.1.1 Errata
-------------------

Release Name: eclipse-poky-kepler-krogoth-15.0.1
Branch: kepler/krogoth
Tag: kepler/krogoth-15.0.1
Hash: f402f9a24114f26c9a057a74206bdca87473367b
md5: cc6705706304b9bef56bfafe4d5cffcf
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.1/eclipse-poky-kepler-krogoth-15.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.1/eclipse-poky-kepler-krogoth-15.0.1.tar.bz2

Release Name: eclipse-poky-luna-krogoth-15.0.1
Branch: luna/krogoth
Tag: luna/krogoth-15.0.1
Hash: 155aefbdd7ea776504dedeb7468db2ecd4228629
md5: 81ccc03dad94d04496189322f72d78d6
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.1/eclipse-poky-luna-krogoth-15.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.1/eclipse-poky-luna-krogoth-15.0.1.tar.bz2

Release Name: eclipse-poky-mars-krogoth-15.0.1
Branch: mars/krogoth
Tag: mars/krogoth-15.0.1
Hash: 9b10b9eeaa87580c2126f18d74fe2ff9c8eaf951
md5: c58b98e9ac742f7283e3b06068ff7c21
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.1/eclipse-poky-mars-krogoth-15.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.1/eclipse-poky-mars-krogoth-15.0.1.tar.bz2

Release Name: meta-qt3-krogoth-15.0.1
Branch: krogoth
Tag: krogoth-15.0.1
Hash: 7d958b928a4a38a186746fabbc0d8169dd8bb3a6
md5: 43fe89220ce1c1efa4b1f176562649bb
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.1/meta-qt3-krogoth-15.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.1/meta-qt3-krogoth-15.0.1.tar.bz2

Release Name: meta-qt4-krogoth-15.0.1
Branch: krogoth
Tag: krogoth-15.0.1
Hash: 92a72a790a427af5f85ce86fea4fce86a72c7b58
md5: 55ba7c7f0c99a6541c983bb3a4cf98ec
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.1/meta-qt4-krogoth-15.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.1/meta-qt4-krogoth-15.0.1.tar.bz2

Release Name: poky-krogoth-15.0.1
Branch: krogoth
Tag: krogoth-15.0.1
Hash: f5da2a5913319ad6ac2141438ba1aa17576326ab
md5: 891932438c5a89e757a1e9a9f3e0084a
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.1/poky-krogoth-15.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.1.1/poky-krogoth-15.0.1.tar.bz2


----------------
 Known Issues
----------------

Bug #9362: https://bugzilla.yoctoproject.org/show_bug.cgi?id=9362
Failed to run and debug a project to qemux86 in Eclipse
Fix is on master. Commit: 6deadf5498d091462b92a261e5467f2f754d4921

----------------
Security Fixes
----------------
foomatic-filters: Security fixes CVE-2015-8327
foomatic-filters: Security fix CVE-2015-8560
glibc: Security fix for CVE-2016-4429
glibc: Security fix for CVE-2016-3706
libpcre: Fix CVE-2016-3191
gcc: Security fix CVE-2016-4490
gcc: Security fix CVE-2016-2226
gcc: Security fix CVE-2016-4489
gcc: Security fix CVE-2016-4488
qemu: Security fix CVE-2016-2858
qemu: Security fix CVE-2016-2857
busybox: Security fix CVE-2016-2147
busybox: Security Fix CVE-2016-2148
openssh: Security Fix CVE-2016-3115
tiff: Security fixes CVE-2015-8665 and CVE-2015-8683


----------------
Fixes
----------------
build-appliance-image: Update to krogoth head revision
libproxy: use snapshot.debian.org for SRC_URI
libaio: use snapshot.debian.org for SRC_URI
blktool: use snapshot.debian.org for SRC_URI
linuxdoc-tools: use snapshot.debian.org for SRC_URI
docbook-xml-dtd4: use snapshot.debian.org for SRC_URI
netbase: use snapshot.debian.org for SRC_URI
serf: use snapshot.debian.org for SRC_URI
mailx: use snapshot.debian.org for SRC_URI
ossp-uuid: use snapshot.debian.org for SRC_URI
apmd: use snapshot.debian.org for SRC_URI
at: use snapshot.debian.org for SRC_URI
dpkg: use snapshot.debian.org for SRC_URI
oeqa/recipetool: update recipe test to pass SHA
grub: Fix build with gcc-6
oeqa/devtool: update recipe test as libmatchbox changed
nss: fix build for gcc-6
tzcode-native: update to 2016f
tzdata: update to 2016f
gcc-5.3: fix build for gcc-6
openjade-native: work around bug exposed by GCC 6
binutils: disable werror on native build
glib-2.0: Ignore useless warning found with gcc-6
rpm: Fix build with gcc6
elfutils: Fix build for gcc-6
elfutils-0.148: Fix build with gcc6
pkgconfig: Fix build with gcc-6
binutils: backport fix for TLSDESC relocations with no TLS segment on arch64
musl: Update to v1.1.15 release
dropbear: Remove incorrect SFTPSERVER_PATH from CFLAGS
musl: Upgrade to tip
musl: Update to latest tip
musl: Upgrade to tip of tree
systemtap: Add missing memory flag to fix stap module compilation
ghostscript: update SRC_URI
toaster: toasterconf.json Remove master release
build-appliance-image: Update to krogoth head revision
poky.conf: Bump version for 2.1.1 krogoth release
build-appliance-image: Update to krogoth head revision
wic: rawcopy: make source filenames unique
gcc: make sure header path is set correctly
feature-arm-vfp.inc: fix overzealous ARMPKGSFX_FPU modification
gcc-5: Fix hang with mmusl option on cmdline
devshell.bbclass: fix double unbuffering
Revert "openssl: prevent ABI break from earlier krogoth releases"
image.bbclass: do exact match for rootfs type
scripts/lib/bsp/kernel.py: force patching when branch is machine branch is re-use
bitbake: fetch2: Safer check for BB_ORIGENV datastore
useradd-staticids.bbclass: Allow missing UIDs/GIDs to generate warnings
useradd-staticids.bbclass: Restore failure on missing UIDs/GIDs
documentation.conf: Add information about USERADD variables
pseudo: remove rpath from libpseudo.so
openssh: fix init script restart with read-only-rootfs
binutils: configure with --enable-deterministic-archives
bitbake.conf: don't set CCACHE_DIR to $HOME by default
initramfs-framework: base: Ensures /run/lock is available
initramfs-framework: mdev: Add a runtime dependency on busybox-mdev
tzdata: update to 2016e
tzcode: update to 2016e
libxml2: upgrade to 2.9.4
gcc-runtime, libgcc: Symlink c++ header and startup files in target_triplet for SDK use
musl: Create symlinks for stub libraries
linux-yocto/4.1: fix musb compilation error
linux-yocto/4.4: integrate v4.4.11
linux-yocto/4.4: beaglebone: build in the usb controller drivers
linux-yocto/4.1: v4.1.24 and gcc6 powerpc fixes
linux-yocto-rt, core-image-rt*: Explicitly skip when PREFERRED_PROVIDER_virtual/kernel isn't set to linux-yocto-rt
linux-yocto/4.4: gcc6 build fixes (powerpc and mips)
eudev: remove eudev-hwdb from RRECOMMENDS_eudev
linux-yocto-rt/4.4: Update KBRANCH
perl: reorder tar arguments in do_install_ptest()
syslinux.bbclass: Added configurable SYSLINUX_ALLOWOPTIONS variable
lib/oe/rootfs: Fix DEBUGFS generation, without openssl
zip: update SRC_URI
classes/base: get_lic_checksum_file_list imporve validaton of url's
coreutils: fix for native and nativesdk
gnu-efi: set COMPATIBLE_HOST_armv4 to null
cogl-1.0: set COMPATIBLE_HOST_armv4 to null
openssh: change URI to http:
unzip: update SRC_URI
wic: fix path parsing, use last occurrence
mkefidisk.sh: mount images as read-only
python-smartpm: Fix channel command --remove-all option (again)
python-numpy: fix build failure with python-matplotlib
openssl: prevent ABI break from earlier krogoth releases
bitbake.conf: add default for IMAGE_FSTYPES_DEBUGFS
metadata_scm.bbclass: Do not assume ${COREBASE} is a Git repo
lttng-tools: filter random filename of ptest output
feature-arm-neon.inc: restore vfpv3-d16 support
populate_sdk_ext: Change lockedsigs task mismatch to a warning
populate_sdk_ext.bbclass : Show logfile in case the SDK EXT installation failed
classes/image_vm: allow different filesystems to be used for VM images.
image_types: fix image/compression dependency collection
librsvg: Security fixes via update to 2.40.15
alsa-lib: Fix incorrect appl pointer when mmap_commit() returns error.
gdb: fix QA warning (uClibc)
base-files: add some safety checks in profile
bitbake.conf: change APACHE_MIRROR to point at archive.apache.org
mesa: add PACKAGECONFIG for gbm
libxsettings-client: fix COPYING file
dbus-test: install executables not libtool wrapper scripts
mesa-demos: remove demos using obsolete screen surface
arch-powerpc64.inc: disable the use of qemu usermode on ppc64
eudev: add PACKAGECONFIG for hwdb
libxml2: fix dependencies and QA Issues
bash: fix dependencies and QA Issue
popt: fix dependencies and QA Issue
oeqa/selftest/buildoptions: remove buildhistory signature test
mesa-gl: add missing MESA_CRYPTO to PACKAGECONFIG
cross-localedef-native_2.22.bb: Use autotools configure
insane.bbclass: remove workdir from package_qa_check_license()
qemu: remove explicit but redundant native build dependencies
webkitgtk: remove gnome-common dependency
gnome-desktop3: remove redundant gnome-common dependency
python-pygobject: remove redundant gnome-common dependency
recipetool: create: fix falling back to declared license for npm packages
recipetool: create: fix picking up false npm package directories
arch-armv7ve: inherit armv7a tunes file
autotools: add default for CACHED_CONFIGUREVARS
packagegroup-core-lsb: fix whitespace in meta-qt* warnings
sysvinit-inittab: restrict labels to 4 chars
toolchain-scripts: replace source built-in call
oeqa/sstatetests: remove temporary DL_DIRs in noop_samesigs
oeqa/sstatetests: add http_proxy to no-op hash test
bluez5: enable out-of-tree builds
mx: move to autotools instead of autotools-brokensep
mx-1.0: inherit gtk-doc
meta: add comments to explain autotools-brokensep use
wic: isoimage-isohybrid: fix splash file paths
image.bbclass: don't execute compression commands multiple times
grub_git: set COMPATIBLE_HOST_armv7a to null
wic: isoimage-isohybrid: add grubefi configfile support
busybox: don't build ar
bash: fixed ptest run-builtins failed
libunwind: backport aarch64_be support
image.bbclass: don't emit redundant IMAGE_CMD_xxx functions
linux-firmware: break out bnx2 mips firmware and WHENCE license
package: ensure do_split_packages doesn't return duplicates
kernel-uimage: change target image to vmlinux
packagegroup-core-tools-profile: Enable valgrind on ARMv7a and above
gcc-sanitizers: Depend on target gcc
bluez5: fixed path to bluetoothd in sysvinit script
toasterconf.json: exclude releases Toaster can't build
bitbake: fetch2: export DBUS_SESSION_BUS_ADDRESS to support authentication agents
gdb: Backport patch to changes with AVX and MPX
gcc-4.9: fix build with gcc 6
lib/oe/rootfs: Fix DEBUGFS generation for opkg & openssl-cnf
devtool: Fix build-sdk when pn doesn't match filename
lib/classextend: Fix determinism issue
update-alternatives: Fix determinism issue
image: Fix IMAGE_FEATURES determinism issue
openssl: Security fix via update to 1.0.2h
linux-yocto/4.4: bump to v4.4.10
linux-yocto/4.4: beaglebone: Enable drm for omap
linux-yocto/4.4: update to v4.4.9
linux-yocto/4.4: bump to v4.4.8
linux-yocto-rt/4.1: update to rt23
linux-yocto/4.4: bump to v4.4.8
linux-yocto/4.4: broxton enablement and refactoring
linux-yocto/4.4: skylake configuration
linux-yocto/4.4: BXT mmc fixes + PUNIT, tubropower, and telemetry backport
linux-yocto/4.1: make ltsi content available
linux-yocto/4.1: update to v4.1.22
kernel-yocto: allow branch auditing to be suspended
kern-tools: handle directories with, or without, trailing /
linux-yocto/4.4: sched/cgroup: Fix/cleanup cgroup teardown/init
linux-yocto/uvesafb: print error message when task timeout occurs
gcc: obey ldflags in the link of libgcc
bitbake: toaster: fix progress bar in MySQL environment
ref-manual: Added GObject Introspection to 2.1 migration section.
dev-manual: Added Gobject Introspection section.
ref-manual: Added new 2.1 migration misc. Change
sdk-manual: Applied review edits throughout the manual.
ref-manual: Applied 2.1 Migration section review edits.
sdk-manual: Updated the normal customization.xml file.
ref-manual: Fixed a grammar consistency error
ref-manual: Applied review edit comments to the 2.1 migration section.
dev-manual: Updated the "varname" use to "VARNAME"
sdk-manual: Updated eclipse customization file.
busybox: musl mips64 ip fix
rpm: explicitly disable tomcrypt
recipetool.newappend: fix syntax error for 'not path_ok' error
matchbox-panel-2: Depend on dbus-glib-native
connman-gnome: Depend on dbus-glib-native
gobject-introspection: Depend on native flex and bison
gobject-introspection: fix floating dep on python-mako
sdk.py: preserve packaging data when SDKIMAGE_FEATURES has "package-management"
lib/oe/rootfs: Fix DEBUGFS generation when using opkg
boost: improve configure
boost: delete the build directory before rebuilding
license.bbclass: make sure that image manifest dir exists
busybox: update flock behavior to match upstream
valgrind: turn off the file level dependency
tzdata: update to 2016d
tzcode: update to 2016d
meta: add missing intltool-native dependency
pulseaudio: Add intltool-native dependency

