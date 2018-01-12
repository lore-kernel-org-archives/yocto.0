Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CFA8E00E4F; Thu, 11 Jan 2018 17:05:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94B29E00E46;
	Thu, 11 Jan 2018 17:04:59 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Jan 2018 17:04:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,346,1511856000"; d="scan'208";a="10601271"
Received: from maggyibr-mobl.amr.corp.intel.com ([10.255.66.37])
	by orsmga006.jf.intel.com with ESMTP; 11 Jan 2018 17:04:58 -0800
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
From: Tracy Graydon <tracy.graydon@intel.com>
Message-ID: <dde01a3d-5194-228a-2265-c9f06445adf4@intel.com>
Date: Thu, 11 Jan 2018 17:04:57 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.4.1 (rocko-18.0.1) Released
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
X-List-Received-Date: Fri, 12 Jan 2018 01:05:01 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.4.1 (rocko-18.0.1) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.1/poky-rocko-18.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.1/poky-rocko-18.0.1.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.1/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW51_-_2017-12-21-_Full_Test_Cycle_-_2.4.1_rc1

Thank you to everyone for your contributions to this release!

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com


------------------
yocto-2.4.1 Errata
------------------

Release Name:  eclipse-poky-neon-rocko-18.0.1
Branch: rocko
Tag: rocko-18.0.1
Hash:  83e0083ef3a71e10039ace7d18057dddc154408b
md5: e60acf5e3804f4f1c2bf00aa5a185931  eclipse-poky-neon-rocko-18.0.1.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.1/eclipse-poky-neon-rocko-18.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.1/eclipse-poky-neon-rocko-18.0.1.tar.bz2

Release Name:  eclipse-poky-oxygen-rocko-18.0.1
Branch: rocko
Tag: rocko-18.0.1
Hash:  126e707a6de212feeaaf093edc170aaa74192ce7
md5: 5691fe17276e8c9932b8d384569d07da  eclipse-poky-oxygen-rocko-18.0.1.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.1/eclipse-poky-oxygen-rocko-18.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.1/eclipse-poky-oxygen-rocko-18.0.1.tar.bz2

Release Name:  meta-qt3-rocko-18.0.1
Branch: rocko
Tag: rocko-18.0.1
Hash:  f33b73a9563f2dfdfd0ee37b61d65d90197a456f
md5: 5cb7e7218605001c06072592b72502f1  meta-qt3-rocko-18.0.1.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.1/meta-qt3-rocko-18.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.1/meta-qt3-rocko-18.0.1.tar.bz2

Release Name:  meta-qt4-rocko-18.0.1
Branch: rocko
Tag: rocko-18.0.1
Hash:  f313dbee2ac3d5fcc9801407947d3cb6cfb90b5d
md5: defef8f6b49b5b622f094deb2e47514b  meta-qt4-rocko-18.0.1.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.1/meta-qt4-rocko-18.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.1/meta-qt4-rocko-18.0.1.tar.bz2

Release Name:  poky-rocko-18.0.1
Branch: rocko
Tag: rocko-18.0.1
Hash:  c2b641c8a0c4fd71fcb477d788a740c2c26cddce
md5: 8790dcd97f8a594987d419eeefadef8b  poky-rocko-18.0.1.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.1/poky-rocko-18.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.1/poky-rocko-18.0.1.tar.bz2

---------------
 Known Issues
---------------
N/A

--------------
Security Fixes
--------------
icu: CVE-2017-14952
curl: Security Advisory - curl - CVE-2017-1000254

-----
Fixes
-----
oeqa/runtime/buildcpio: Use our own mirror for source
binutils: Convert SRC_URI and SRCREV to weak defines
binutils: update to 2.29.1
acpica: fix build with x32
boost: fix build with x32 and musl
runqemu: Add workaround for APIC hang on pre 4.15 kernels on qemux86
glib-2.0: Add python3 modules required by gdbus-codegen
lib/oe/patch: add missing import
bmap-tools: fix RDEPENDS and update SRC_URI
rm_work: remove debugging statements
kernel-fitimage: Fix bad image type replacement for aarch64
image-live.bbclass: add MLPREFIX to core-image-minimal-initramfs
image-live.bbclass: print warn when initramfs is invalid
wic: Fix a path to a psuedo state directory (PSEUDO_LOCALSTATEDIR).
waf.bbclass: explicitly pass bindir and libdir if supported
kernel.bbclass: Fix do_sizecheck behaviour
image_types: btrfs use sparse file creation
rm_work: Handle race with -inital tasks
linux-yocto/4.12: CQM and kmemleak fixes
linux-yocto/4.12: common-pc*: enable X2APIC by default
linux-yocto/4.12: update to v.4.12.18
linux-yocto/4.12: bug fixes and feature backports
linux-yocto/4.x: configuration updates
linux-yocto/4.12: ipv4 stable backport and config changes
linux-yocto/4.12: bug fixes and VRF feature addition
linux-yocto/4.12: update to v4.12.16
systemd: fix segfault when terminating systemd --test
recipetool: create: fix conflict between SRCREV and tag
libxslt: use HTTP instead of FTP in SRC_URI
ovmf: Fix build failure for PARALLEL_MAKE with no space
kernel-yocto: ensure that only a single defconfig is processed
kernel-yocto: Stop the build if defconfig is missing
kernel-yocto: ensure sccs variable is set when using KBUILD_DEFCONFIG
linux-yocto/4.9: update to v4.9.65
linux-yocto/4.12: iwlwifi calltrace fixes and configuration warning cleanups
linux-yocto/4.9: update to v4.9.61
rootfs-postcommands.bbclass: ensure that rootfs gets mounted ro
connman.inc: do not check IMAGE_FEATURES
templates/layer.conf: remove backslash to enable bbappend setting
systemd: allow dots in arguments to template units
package_manager: force dnf to refresh the cache
meta-selftest: fix upstream version checks for devtool test recipes
mtd-utils: fix flash_eraseall installation conflict
wpa-supplicant: add a missing WPA_COMMON_CTRL_IFACE definition
update-alternatives.bbclass: refuse to manage SysV init scripts
Revert "classes: Fix alternatives and rc.d ordering"
initscripts: rrecommend initscripts-functions
lsbinitscripts: don't use update-alternatives
initscripts: don't use update-alternatives
sysklogd: don't use update-alternatives
install*.sh: add short sleep after parted commands
init-install: fix grub-install command
initramfs-module-install: Remove allarch and FILESEXTRAPATHS
initramfs-framework: add install module
initramfs-module-install-efi: update summary
initramfs-module-install-efi: point to original copy and delete new file
wic: support filesystem label for rawcopy
openssl: fix runtime errors with Thumb2 when using binutils 2.29
openssl: Upgrade 1.1.0f -> 1.1.0g
openssl10: fix runtime errors with Thumb2 when using binutils 2.29
openssl10: Upgrade 1.0.2l -> 1.0.2m
python[3]-setuptools: inherit setuptools
local.conf.sample: Weakly set BB_DISKMON_DIRS
documentation: Prepped manual set for a 2.4.1 point release
bitbake: toaster: add 'nobuild' option to Toaster
bitbake: toaster: landing page show cmdline capture
bitbake: toaster: enable custom env support for shell calls
bitbake: toaster: some recipe events do not include packages
bitbake: toaster: update Toaster for Django 1.11
bitbake: toaster: unset BBPATH before starting bbserver for backwards compatibility
populate_sdk_ext: Use prebuilt uninative tarball
makefile: Removed "yocto-environment.png" from tar list of mega-manual
ref-manual: Fixed redundant link for "build system"
ref-manual: Added new terms to Yocto Project Terms section.
dev-manual: Updated bitbake-layers overview section.
ref-manual: 2.4 Migration Revisions
ref-manual: 2.4 Migration Revisions
build-appliance: Fix branch name
build-appliance-image: Update to rocko head revision
poky: Update to version 2.4.1
go: ensure use of BUILD_CC when building bootstrap tools
go: Use right dynamic linker on musl
Revert "go: Fix build with PIE on musl"
bitbake: tinfoil: Ensure we clean up loggers
bitbake: event: Ensure we clean up loggers
bitbake: tests/fetch: Add ftp test url
bitbake: tests/fetch: use subtests in the wget tests
bitbake: tests/fetch: Switch gnu.org urls from ftp -> http/https
bitbake: bitbake: be more explicit when warning about locale choice
bitbake: tests/fetch: skip network tests the idiomatic way
bitbake: fetch2: Fix missing logger import in repo fetcher
gstreamer1.0-plugins: disable introspection on mips64
sudo: improve reproducibility
x11perf: improve reproducibility
grub-efi_2.02.bb: improve reproducibility
libnsl2: fix installed-vs-shipped QA issue
nss: pay attention to CFLAGS
qemu.inc: let linux-yocto-rt also provide nfs server kernel module
systemd: fix duplication of CACHED_CONFIGUREVARS
systemd: use consistent indenting and coding style in do_install()
systemd: sort PACKAGECONFIG options
systemd: use consistent approach for musl PACKAGECONFIG options
systemd: remove musl specific control of ldconfig PACKAGECONFIG
tclibc-musl.inc: disable ldconfig distro feature
runqemu: print command search result when not found
runqemu: Also specialcase resolution of '.' to the file's location
image_types: Add debugging code to ext4 fs creation
qemurunner: Simplify binary data handling
qemuboot: Improve relative path handling
runqemu: Improve relative path handling in qemuconf files
qemu: Add patch to avoid qemuppc boot hangs
runqemu: Ensure we process all tap devices
base: add automatic dependency on xz-native for .txz SRC_URI
net-tools: correctly set COPTS and LOPTS
recipetool: create: fix failure handling included dicts
linux-firmware: Remove iwlwifi-8000C-19 SRC_URI
gcc: backport patch to fix miscompilation on mips64
gcc7: Fix unaligned STRD issue on ARM
lttng-modules: Upgrade to 2.9.5 release
sbc: fix license
sbc: move examples to their own package
ca-certificates: Add /etc to SYSROOT_DIRS
go: Fix build with PIE on musl
dhcp: fix build issue with libxml2 support
dhcp: use ${BPN} instead of ${PN} for user
package_ipk.bbclass: handle only whitespace in PACKAGE_EXCLUDE
initramfs-live-install: Add aarch64 arch to COMPATIBLE_HOST.
base.bbclass: increase indent in get_layers_branch_rev() and buildcfg_vars()
lib/oe/recipeutils: fix line splitting in patch_recipe_*
lib/oe/recipeutils: fix find_layerdir() to return absolute paths
recipetool: ignore incidental kernel module source
recipetool: pass absolute source tree path to plugins
systemd: Fix build with musl/mips64
oeqa/runner: Pass the value of buffer, don't force to True
oeqa: Markup further tests for stdout/stderr buffering
testimage: Ensure full logs are shown for failures
maintainers.inc: add Otavio Salvador for go-dep
maintainers.inc: add Khem Raj for libmnl
gtk-doc.bbclass: correctly make the list of directories with shared libraries
oeqa/target/ssh: Drop command/output logging to debug level
oeqa: Clean up logger handling
testimage: Pass the logger into OERuntimeTestContextExecutor.getTarget()
oeqa/qemurunner: Use logger.debug, not logger.info
oeqa/targetcontrol: Drop unused get_target_controller function
oeqa/runqemu: Only show stdout/stderr upon test failure
qemurunner: Ensure logging handler is removed
systemd: Fix build on musl
e2fsprogs-ptest: improve reproducibility
oe-build-perf-report-email.py: add images as MIME objects
gobject-introspection: improve reproducibility
wic: Update canned-wks for systemd to use UUID everywhere
wic: When using --use-uuid make sure that we update the fstab with PARTUUID
systemctl-native: add target.wants to target regex
dpkg: use snapshot.debian.org
curl_7.54.1.bb: improve reproducibility
systemd: remove useless options for mips4
rpm: remove --sysroot from macros on target
libsolv: fix a kernel-devsrc installation issue
grub_2.02.bb: improve reproducibility
python: add PACKAGECONFIG for Berkeley DB module
db: change types to avoid headers changing between architectures
bash-completion: remove rfkill file that util-linux provides
sshcontrol.py: in copy_to() always use scp
masterimage.py: rename parameter "params" in start() to "extra_bootparams"
masterimage.py: fix stop()
masterimage.py: fix issue with calling reboot on masterimage/DUT
selftest/imagefeatures: add basic test for useradd-staticids
oeqa/core/loader: Make _built_modules_dict() support packages correctly
oeqa/selftest/runtime_test: use console in postinst_rootfs_and_boot
image.bbclass: let do_image depend on do_populate_lic of EXTRA_IMAGEDEPENDS
externalsrc: fix ExpansionError if the source dir does not exist yet
image.bbclass: Fix 'vardepsexclude' mechanism for image_cmd_${FSTYPE}
useradd-staticids: explain how to fix the the problem
useradd-staticids: skip recipes without static IDs
feature-arm-vfp.inc: drop unnecessary extra space from TUNE_CCARGS
maintainers.inc: update maintainership
oeqa/selftest/runtime_test: fix postinst_rootfs_and_boot
lib/oe/sstatesig: fix wildcard matching wrong task signature files
nativesdk-packagegroup-sdk-host: remove redundant LICENSE
oeqa/selftest/runtime: force empty root password, use helpers to access qemu
wic: misc.py: Use mmd from mtools instead of syslinux
goarch: There is no GOARCH defined for mips64-n32
kexec-tools: add systemd support for kdump
lib/oe/terminal.py: use an absolute path to execute oe-gnome-terminal-phonehome
useradd.bbclass: print a warn when useradd not found
bind: Convert from ftp to https urls
runqemu: correct rootfs setup to boot an ide hddimg
tzdata: update 2017c
tzcode-native: update to 2017c
qemurunner: fix bad indentation in serial login
util-linux-ptest: various fixes
wic: misc.py: Added more mtools binaries
mdadm: Fix build with gcc < 7
openssl: force soft link to avoid rare race
nettle-ptest: fix a failing test
gawk-ptest: fix a failing test
tcl: remove host path from tclConfig.sh
elfutils: Fix missing library on linker cmdline
perl-native: Provide correct lddlflags
curl: add 'enable-ares' packageconfig option
linux-yocto/4.12: ide:ide-cd: fix kernel panic resulting from missing scsi_req_init
linux-yocto/4.12: configuration fragment updates
linux-yocto/4.9: update to v4.9.57
kern-tools: make fuzzy matching optional
linux-yocto/4.12: stable backports and bug fixes
linux-yocto/4.12: update to v4.12.14
linux-yocto/4.4: update to v4.4.93
linux-yocto/4.12: configuration and feature updates
rng-tools: Fix crazy defaults
oe-buildenv-internal: Fix finding build directory
wic: add 'part-name' argument for naming GPT partitions
bitbake: main: Give a user readable error if we can't locate topdir
bitbake: cooker: fix watching directories with Python 3.6+
bitbake: bitbake: Update version to 1.36.0 for stable release
ref-manual: Updates to "Image Generation" section.
dev-manual, kernel-dev: Replaced yocto-layers with bitbake-layers command
ref-manual: First draft of the 2.4 Migration section
documentation: Updated title page notes and author group
ref-manual, mega-manual: Updated Index of Releases figure
ref-manual, mega-manual: Updated example source repo figure
ref-manual: Updated "Build Image" section for do_image<type>[depends]
sdk-manual: Updated title page note for manual information.
sdk-manual: Minor wording update in title page note.
ref-manual: Updated links to the sdk-manual
yocto-project-qs: Updated references to the sdk-manual
kernel-dev: Updated links to the SDK manual.
sdk-manual: Changed name of the manual.
dev-manual: Updated links to SDK manual.
sdk-manual: Split the Eclipse section into a separate chapter
ref-manual: Added links for do_image and do_image_complete tasks
ref-manual: Replaced "vmdk" with "wic.vmdk"
dev-manual: Updated run QEMU basic syntax step
ref-manual: Updated EFI_PROVIDER variable description
ref-manual: Cleaned up multiple notes for the IMAGE_FSTYPES variable
ref-manual: Clarified build history as creating a single commit per build.
dev-manual: Changed location of maintainers.inc file to meta/conf
dev-manual: Removed a couple instances of "meta-yocto"
ref-manual: Removed "unsafe-references-in-scripts" test from insane class
mega-manual: Added new dev-manual title .PNG file to Figures folder.
mega-manual: Updated author line.
mega-manual.sed: Changed title of dev-manual.
yocto-project-qs: Minor edits for readability
dev-manual: Updated title .PNG file
documentation: Updates to change dev-manual title
yocto-project-qs: Changed links to dev-manual due to title changing.
toaster-manual: Fixed external links
sdk-manual: Fixed two links to changed dev-manual title.
sdk-manual: Converted external links to internal and fixed dev-title link
sdk-manual: Converted external links to internal links.
sdk-manual: Fixed links to dev-manual for changed dev-manual title.
sdk-manual: Fixed link to dev-manual for new title of dev-manual.
ref-manual: Converted external links to internal and fixed dev-manual links
ref-manual: Converted 4 external links to internal links.
ref-manual: Updated links to dev-manual.
ref-manual: Converted two external links to internal links.
ref-manual: Fixed dev-manual links.
ref-manual: Converted two external links to internal links.
ref-manual: Fixed internal links and links to dev-manual
ref-manual: Fixed two internal links.
ref-manual: Fixed local links and links to dev-manual
ref-manual: Changed dev-manual title and fixed links
ref-manual: Fixed "Oe-Core" links and links to dev-manual.
ref-manual: Fixed "Oe-Core" reference links.
ref-manual: Fixed links for "Oe-Core" term.
kernel-dev: Updated dev-manual title
bsp-guide: Changed dev-manual title name
toaster-manual: Updated "Defining the Default Distro and Other Values"

