Return-Path: <vineela.tummalapalli@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB013E00DF0; Wed, 23 Oct 2019 16:51:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2D4EE00DF0;
	Wed, 23 Oct 2019 16:51:13 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Oct 2019 16:51:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,222,1569308400"; d="scan'208";a="281771948"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 23 Oct 2019 16:51:12 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Wed, 23 Oct 2019 16:51:12 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.1.115]) by
	ORSMSX154.amr.corp.intel.com ([169.254.11.174]) with mapi id
	14.03.0439.000; Wed, 23 Oct 2019 16:51:12 -0700
From: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Thread-Topic: [yocto-announce] [ANNOUNCEMENT] Yocto Project 3.0 (Zeus
	22.0.0) Released
Thread-Index: AdWJ/Jhz/8rqdYbjQQ2n1BKJq6+hkQ==
Date: Wed, 23 Oct 2019 23:51:11 +0000
Message-ID: <363DC7214F94884BBF80916755E7D655207936C9@ORSMSX107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmVjNTZmMWEtZTVjYy00YjA3LThjZGQtOWNjZDMzMzI0MjE0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiV2NZOG91Q0VWVHNUTFI3eXFzRFhXMFNkUHl2ck5TYUU4bnFRNXlNQW5zWmhVeElFa1ZXdnZCMzRjVjdvQkpSYyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [yocto-announce] [ANNOUNCEMENT] Yocto Project 3.0 (Zeus 22.0.0) Released
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
X-List-Received-Date: Wed, 23 Oct 2019 23:51:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Changing the subject..

Hello,

We are pleased to announce the Yocto Project 3.0 (zeus-22.0.0) Release is n=
ow available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.0/poky-zeus-22.0.0=
.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0/poky-zeus-22.0.0.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.0/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.0/testreport.txt

Thank you for everyone's contributions to this release.

Vineela Tummalapalli
Yocto Project Build and Release
vineela.tummalapalli@intel.com

- -----------------------
yocto-3.0 Release Notes
- -----------------------

- ----------------------
Repositories/Downloads
- ----------------------

Repository Name: Poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: zeus
Tag: yocto-3.0
Git revision: 94f6b31befda5c496f65e863a6f8152b42d7ebf0
Release Artefact: poky-zeus-22.0.0
md5: bb0925e0b338bf3d9ebed72b30679e36
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0/poky-zeus-22.0.0=
.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0/poky-zeus-22.0.0.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: zeus
Tag: 2019-10
Git revision: 59938780e7e776d87146002ea939b185f8704408
Release Artefact: oecore-zeus-22.0.0
md5: e2fec576ee37d4f613540ecac7f4c63e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0/oecore-zeus-22.0=
.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0/oecore-zeus-22.0.0.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: zeus
Tag: yocto-3.0
Git revision: 756963cc28ebc163df7d7f4b4ee004c18d3d3260
Release Artefact: meta-mingw-zeus-22.0.0
md5: 9b59518e18af36a2f1520885841d3834
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0/meta-mingw-zeus-=
22.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0/meta-mingw-zeus-22.0.0.tar.=
bz2

Repository Name: meta-intel
Repository Location: https://git.yoctoproject.org/git/meta-intel
Branch: zeus
Tag: yocto-3.0
Git revision: 13fcf624491cdd0d9b3eb78a4f0cd1781b482b51
Release Artefact: meta-intel-zeus-22.0.0
md5: e6fb4a143d61d2552dd637dc23ea791e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0/meta-intel-zeus-=
22.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0/meta-intel-zeus-22.0.0.tar.=
bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: zeus
Tag: yocto-3.0
Git revision: 9ca96786fd851150b518388bcb166efa0b4dfff9
Release Artefact: meta-gplv2-zeus-22.0.0
md5: ed9d383a1cd85afb7d37eb567a21c84a
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0/meta-gplv2-zeus-=
22.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0/meta-gplv2-zeus-22.0.0.tar.=
bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: zeus
Tag: yocto-3.0
Git revision: 5d83d828cacb58ccb7c464e799c85fd2d2a50ccc
Release Artefact: bitbake-zeus-22.0.0
md5: a5036bdfdfc3ee47a98d6e12660e84aa
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0/bitbake-zeus-22.=
0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0/bitbake-zeus-22.0.0.tar.bz2

- ---------------------------
New Features / Enhancements
- ---------------------------

* Linux kernel 5.2/4.19, gcc 9.2, glibc 2.30 and ~260 other recipe upgrades
* Build change equivalence is detected and used to avoid rebuilding unchang=
ed components (BETA)
  - See "Hash Equivalence" sample entry in local.conf.sample for usage inst=
ructions.
* Automated testing improvements:
  - Enabled test suites for gcc, glibc, binutils
  - Add ptest ptest support to elfutils, m4, gettext
  - Fixes for many ptest test failures
  - testimage: consider QB_DEFAULT_FSTYPE
  - oe-selftest: implement console keepalive output
  - Support for LTP / LTP compliance
  - Added core-image-sato-ptest-fast image to execute 'fast' subset of ptes=
ts
  - resulttool: Add log subcommand
  - resulttool: enable loading results directly from an http/https URL
  - resulttool: add manual test case configuration option
  - resulttool: Add option to dump all ptest logs
* Architecture / machine-specific enhancements:
  - New "qemuriscv64" emulated RISC-V 64-bit machine
  - qemu: Add ppc64 to QEMU_TARGETS
  - qemuarm64: Add QB_CPU_KVM to allow kvm acceleration
  - New tune file for ARM Cortex-A53-Cortex-A57
  - New tune file for arm1176jz-s CPU
  - meson.bbclass: Handle microblaze* mapping to cpu family
  - meson.bbclass: Make meson support aarch64_be.
  - libffi: added RISC-V support
  - icu: added armeb support
  - runqemu: added support for kvm on aarch64
  - beaglebone-yocto machine now set up to support booting images with runq=
emu
  - qemux86: make it possible to use higher tunes using DEFAULTTUNE
* Kernel improvements:
  - kernel-fitimage: introduce FIT_HASH_ALG
  - kernel-module-split.bbclass: support CONFIG_MODULE_COMPRESS=3Dy
  - kernel-yocto: import security fragments from meta-security
  - linux-yocto: add drm-bochs support
  - linux-yocto: bsp/beaglebone: support qemu -machine virt
* multiconfig builds now reach their full potential:
  - Many bugfixes and improvements
  - sstate cache is now shared between configurations being built concurren=
tly
  - multiconfig configurations can be contained in layers
* Significant removal of old/obsolete software/patches ensuring we have a m=
odern and up to date core Linux software stack:
  - LSB support removed
  - GTK+ 2 moved out to meta-oe
  - Python 2 dependencies minimised
  - Many obsolete patches dropped
* CVE checking enhancements:
  - New cve-update-db recipe that reads from NVD JSON data feeds and suppor=
ts network proxies
  - Support for CVSSv3 scoring
  - CVE_PRODUCT entries can now contain strings to match the vendor as well=
 as product (vendor:product syntax)
* New INIT_MANAGER variable to make it easy to select the init manager (sys=
vinit, systemd, mdev-busybox)
* New recipes: binutils-cross-testsuite, core-image-sato-ptest-fast, dejagn=
u, efibootmgr, efivar, ell, glibc-testsuite, libcap-ng-python, libedit, lib=
module-build-perl, libx11-compose-data, libxcrypt-compat, lsb-release, musl=
-obstack, opensbi, python3-pygments, python3-scons, python3-scons-native, s=
tress-ng, vulkan-headers, vulkan-loader, vulkan-tools, wireless-regdb
* Added native variant to: glib-networking, grub, libsoup, python3-dbus
* BitBake improvements:
  - Merged setscene tasks into the main runqueue so they can run in paralle=
l
  - fetch2/git: added sanity checking for git-lfs
  - fetch2/svn: prevent from directly pulling from an externals w/o fetcher
  - fetch2/npm: use npm pack to download node modules instead of wget
  - Added --skip-setscene option
  - Respect -f/--force option in conjunction with --runall or --runonly
  - bitbake -e now supports showing base multiconfig configuration (using m=
c: prefix)
  - "mc:" prefix now supported as a shorter version of multiconfig:
  - Print more information when basehashes are mismatched
  - Show task elapsed time in hours, minutes, and seconds
  - Report all nonexistent directories in BBLAYERS in error message instead=
 of just the first
  - Improve validation of addtask and deltask arguments
  - Added support for custom progress handlers injected via OE_EXTRA_IMPORT=
S
  - Enable console keepalive to help usage with remote sessions
  - Symlink the current cache file
* systemd-related improvements:
  - serial-getty@.service: Allow device to fast fail if it does not exist
  - Rewrote systemctl-native in Python supporting preset-all and mask
  - Added partial support of drop-in configuration files to systemd-systemc=
tl-native
  - systemd-conf: added default configuration for wired network with DHCP
  - systemd-conf: simplified creation of machine-specific configuration
  - Create preset files and allow systemd to populate /etc/systemd/system i=
nstead of populating explicitly
  - Added systemd helper unit to load/restore iptables rules
* runqemu improvements:
  - Added support to pass multiple ports to tcpserial parameter
  - Added support for a BIOS command-line variable (consistent with KERNEL)
  - New QB_FSINFO variable supporting "wic:no-kernel-in-fs" and "wic:kernel=
-in-fs" for wic images
  - Added support to handle EnrollDefaultKeys PK/KEK1 certificate
  - Decoupled gtk and gl options
* wic improvements:
  - New partition type for msdos partition tables
  - New "bootimg-biosplusefi" source type that supports both BIOS and EFI
  - Support for kernel with initramfs bundled
  - bootimg-efi: add label source parameter
  - bootimg-efi: allow multiple initrd
  - bootimg-efi: replace hardcoded volume name with label
  - Include .wks.in in wic search and list
  - Use KERNEL_IMAGETYPE instead of hardcoding bzImage
  - Added global debug option
* Other image-related improvements:
  - Centralised default UEFI image configuration in conf/distro/image-uefi.=
conf
  - Make gzipped images rsyncable
  - initramfs-framework: support PARTLABEL option
  - New bash-completion IMAGE_FEATURES item to add bash-completion support =
for all installed packages
* devtool/recipetool improvements:
  - New "devtool menuconfig" subcommand
  - devtool build now also runs do_deploy if applicable
  - devtool finish now supports a --no-clean option
  - devtool finish now warns if multiple layers have the same base name
  - recipetool now supports creating recipes for Python 3
* Other script improvements:
  - buildstats-diff: added option to filter tasks
  - bitbake-layers: added several options to to make it easier to get plain=
 output (for scripting)
  - ddimage: replaced target device blacklist with mount check
  - yocto-check-layer: Allow any case for README file detection
* SDK-related changes:
  - New SDK_ARCHIVE_TYPE variable to control SDK archive format
  - Introduce mechanism to keep nativesdk* sstate in eSDK
  - Added nativesdk variant to: dnf, gzip, libtasn1, python3-dbus
  - Use the best xz compression for the SDK
* buildhistory improvements:
  - Record sysroot changes in addition to runtime content
  - Show time spent writing buildhistory
* Recipe sanity checking improvements:
  - Added check to ensure perllocal.pod is not installed by non-CPAN perl r=
ecipes
  - Added sanity checks for ${PN} vs ${BPN} and github archives in SRC_URI
  - Check if a recipe incorrectly uses DEPENDS_${PN}
  - Improved buildpath warning messages
  - Simplified paths in host contamination warnings
* poky-lsb replaced by poky-altcfg for alternate configurations to be teste=
d on the autobuilder (as well as an example of subclassing a distro config)
* Added minver and maxver parameters for patches in SRC_URI for more flexib=
ility in bbappends and common inc files
* PRIVATE_LIBS variable now supports shell-style wildcards for matching lib=
raries
* Adoption of SPDX license identifiers throughout Yocto Project's component=
s
* Added bbverbnote shell log command (consistent with bbwarn, bberror etc.)
* New OE_EXTRA_IMPORTS variable to make it easier to import custom modules =
into BitBake python environment
* busybox: enabled unicode support by default
* cmake: Use compiler launcher variable when ccache is enabled so that it c=
an be disabled by build scripts if needed
* db: add new "verify" PACKAGECONFIG option for enabling database verificat=
ion with db_verify command (default disabled)
* distcc: split into client and server packages
* dropbear: new "disable-weak-ciphers" PACKAGECONFIG option to disable olde=
r weak ciphers
* grub-efi-native: install grub-editenv
* lttng-modules: added git based recipe
* opkg: allow overriding OPKGLIBDIR
* ovmf: Generate test Platform key and first Key Exchange Key
* New PKGDATA_VARS variable to specify variables written out to pkgdata
* Obsolete stress recipe replaced by stress-ng
* uboot-sign: add support for different u-boot configurations
* update-rc.d: support enable/disable options
* waffle: support building without x11
* weston-init: Add possibility to run weston as non-root user
* python3: support recommends in manifest
* package_deb: add DPKG_BUILDCMD variable to allow customising dpkg command
* chrpath.bbclass: Add break_hardlinks parameter to allow breaking hardlink=
s when processing rpaths
* New "Apache-2.0-with-LLVM-exception" common license file
* screen: add /etc/screenrc as global config file
* utils/multiprocess_launch: Improve failing subprocess output
* Added local.conf/auto.conf into error report submitted by report-error.bb=
class
* Added OpenEmbedded logo .svg file to repository (from OE-Classic)

- ------------
Known Issues
- ------------
*Bug 13594: mpc8315e-rdb: the stap oeqa test causes OOM.
This issue is on a platform with minimal support and works outside the fram=
ework.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13594

*Bug 13595: strace ptest failed .
strace issue is two individual test regressions which is an improvement on =
the test timeouts we had previously.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13595

*The build/hash equivalency code is considered to be at beta testing level.=
 When used in large scale deployment like the project autobuilder some task=
 migration issues have been noticed. Work is ongoing to debug and address t=
hose issues. Individual developer testing seems to be stable.

- ---------------
Recipe Licenses
- ---------------
The following corrections have been made to the LICENSE values set by recip=
es:

* cairo: MPL-1 -> MPL-1.1
* dbus / dbus-glib / dbus-test: AFL-2 -> AFL-2.1
* iw: BSD -> BSD-2-Clause
* libical: MPL-1 -> MPL-1.0
* openssh: some files are licensed under ISC or MIT license, so add these t=
o LICENSE
* taglib: MPL-1 -> MPL-1.1
* vte: several files in libvte source are LGPLv3+, so add to LICENSE and se=
t LGPLv3+ as the libvte package LICENSE


- ----------------------
Migration instructions
- ----------------------

For details on changes that you might need to make when migrating to the Yo=
cto Project 3.0 release from previous releases, please see the following ma=
nual section:

http://www.yoctoproject.org/docs/3.0/ref-manual/ref-manual.html#moving-to-t=
he-yocto-project-3.0-release



- --------------
Security Fixes
- --------------
* binutils: CVE-2019-12972, CVE-2019-14250, CVE-2019-14444, CVE-2019-9070, =
CVE-2019-9071, CVE-2019-9074, CVE-2019-9075, CVE-2019-9076, CVE-2019-9077
* dbus: CVE-2019-12749
* gcc: CVE-2019-14250, CVE-2018-12886, CVE-2018-18484, CVE-2019-15847
* gdb: CVE-2017-9778
* ghostscript: CVE-2019-14811, CVE-2019-14817
* glib-2.0: CVE-2019-12450
* glibc: CVE-2018-20796 (same as CVE-2019-9169)
* gnupg: CVE-2019-13050
* gnutls: GNUTLS-SA-2019-03-27
* iptables: CVE-2019-11360
* libid3tag: CVE-2017-11550, CVE-2017-11551 (same as CVE-2004-2779)
* libxslt: CVE-2019-11068, CVE-2019-13117, CVE-2019-13118
* linux-yocto/4.19: CVE-2019-3887
* linux-yocto/5.0: CVE-2019-3887
* ltp: CVE-2017-17052
* nasm: CVE-2018-19755
* openssh: CVE-2018-20685, CVE-2019-6109, CVE-2019-6111
* patch: CVE-2018-1000156 (improved fix), CVE-2019-13636, CVE-2019-13638
* python3: CVE-2019-9740, CVE-2019-9948
* python: CVE-2018-20852, CVE-2019-9740, CVE-2019-9947 (same as CVE-2019-97=
40), CVE-2019-9948, CVE-2019-9636
* qemu: CVE-2019-12155, CVE-2019-15890
* rsync: CVE-2016-9840, CVE-2016-9841, CVE-2016-9842, CVE-2016-9843
* squashfs-tools: CVE-2015-4645, CVE-2015-4646
* tiff: CVE-2019-6128, CVE-2019-7663, CVE-2019-14973
* u-boot: CVE-2019-13103, CVE-2019-13104, CVE-2019-13105, CVE-2019-13106, C=
VE-2019-14192, CVE-2019-14193, CVE-2019-14194, CVE-2019-14195, CVE-2019-141=
96, CVE-2019-14197, CVE-2019-14198, CVE-2019-14199, CVE-2019-14200, CVE-201=
9-14201, CVE-2019-14202, CVE-2019-14203, CVE-2019-14204
* unzip: CVE-2019-13232
* vim: CVE-2019-12735


- ---------------
Recipe Upgrades
- ---------------
* acpica: update to 20190816
* acpid: upgrade 2.0.31 -> 2.0.32
* adwaita-icon-theme: upgrade 3.30.1 -> 3.32.0
* alsa-lib: upgrade 1.1.8 -> 1.1.9
* alsa-plugins: upgrade 1.1.8 -> 1.1.9
* alsa-utils: upgrade 1.1.8 -> 1.1.9
* apr: upgrade 1.6.5 -> 1.7.0
* apt: update to 1.2.31
* aspell: update to 0.60.7
* atk: upgrade 2.30.0 -> 2.32.0
* at-spi2-atk: upgrade 2.30.0 -> 2.32.0
* at-spi2-core: upgrade 2.30.0 -> 2.32.1
* autoconf-archive: update to 2019.01.06
* babeltrace: update to 1.5.7
* bash-completion: upgrade 2.8 -> 2.9
* bash: upgrade 4.4.18 -> 5.0
* bison: upgrade 3.0.4 -> 3.4.1
* boost: update to 1.71.0
* btrfs-tools: upgrade 4.20.1 -> 5.2.2
* build-compare: 2015.02.10 -> 2019.08.14
* busybox: 1.30.1 -> 1.31.0
* bzip2: update to 1.0.8
* ccache: upgrade 3.6 -> 3.7.3
* cmake: 3.14.1 -> 3.15.3
* cogl: upgrade 1.22.2 -> 1.22.4
* connman: update to 1.37
* coreutils: update to 8.31
* createrepo-c: update to 0.15.0
* cronie: update to 1.5.4
* cups: update to 2.2.12
* curl: update to 7.66.0
* dbus-test: Upgrade 1.12.12 -> 1.12.16
* dbus: Upgrade 1.12.12 -> 1.12.16
* debianutils: upgrade 4.8.6.1 -> 4.8.6.3
* desktop-file-utils: upgrade 0.23 -> 0.24
* distcc: upgrade 3.3.2 -> 3.3.3
* dnf: upgrade 4.1.0 -> 4.2.2
* dpkg: update to 1.19.7
* dropbear: update to 2019.78
* dtc: upgrade 1.4.7 -> 1.5.1
* e2fsprogs: 1.44.5 -> 1.45.3
* elfutils: 0.176 -> 0.177
* ell: update to 0.22
* encodings: update to 1.0.5
* epiphany: update to 3.32.4
* ethtool: update to 5.2
* eudev: update to 3.2.8
* expat: update to 2.2.8
* ffmpeg: update to 4.2.1
* file: update to 5.37
* flac: Upgrade 1.3.2 -> 1.3.3
* fontconfig: update to 2.13.1
* font-util: update to 1.3.2
* freetype: upgrade 2.9.1 -> 2.10.1
* gawk: upgrade 4.2.1 -> 5.0.1
* gcc-9: Upgrade to 9.2
* gdb: Upgrade from 8.2.1 to 8.3.1
* gdk-pixbuf: update 2.38.0 -> 2.38.2
* ghostscript: 9.26 -> 9.27
* git: update to 2.23.0
* glib-2.0: udpate 2.58.3 -> 2.60.7
* glibc: Update to glibc 2.30
* glib-networking: upgrade 2.60.1 -> 2.60.3
* gnu-config: Update to latest SHA
* gnupg: update to 2.2.17
* gnutls: upgrade 3.6.5 -> 3.6.8
* go-1.12: update to 1.12.9 minor release
* gobject-introspection: update to 1.60.2
* go-dep: update to 0.5.4
* go: update 1.12.1->1.12.6
* gpgme: upgrade 1.12.0 -> 1.13.1
* groff: upgrade 1.22.3 -> 1.22.4
* grub: upgrade 2.02 -> 2.04
* gsettings-desktop-schemas: upgrade 3.28.1 -> 3.32.0
* gst-examples: upgrade to 1.16.0
* gstreamer1.0-libav: upgrade to version 1.16.0
* gstreamer1.0-omx: upgrade to version 1.16.0
* gstreamer1.0-plugins-bad: upgrade to version 1.16.0
* gstreamer1.0-plugins-base: upgrade to version 1.16.0
* gstreamer1.0-plugins-good: upgrade to version 1.16.0
* gstreamer1.0-plugins-ugly: upgrade to version 1.16.0
* gstreamer1.0-python: upgrade to version 1.16.0
* gstreamer1.0-rtsp-server: upgrade to version 1.16.0
* gstreamer1.0: upgrade to version 1.16.0
* gstreamer1.0-vaapi: upgrade to version 1.16.0
* gst-validate: upgrade to version 1.16.0
* gtk+3: update 3.24.5 -> 3.24.8
* gtk-doc: upgrade 1.29 -> 1.31
* harfbuzz: upgrade 2.3.1 -> 2.6.1
* help2man-native: update to 1.47.11
* icu: update to 64.2
* ifupdown: update to 0.8.22
* iproute2: update to 5.2.0
* iptables: upgrade 1.6.2 -> 1.8.3
* iputils: upgrade to s20190709
* iso-codes: upgrade 4.2 -> 4.3
* iw: upgrade 4.14 -> 5.3
* kmscube: Bump revision to f632b23
* less: upgrade 550 -> 551
* libarchive: upgrade 3.3.3 -> 3.4.0
* libatomic-ops: upgrade 7.6.8 -> 7.6.10
* libbsd: upgrade 0.9.1 -> 0.10.0
* libcap: update to 2.27
* libcomps: upgrade 0.1.10 -> 0.1.11
* libcroco: update to 0.6.13
* libdazzle: update to 3.32.3
* libdnf: update to 0.28.1
* libdrm: update to 2.4.99
* libevdev: upgrade 1.6.0 -> 1.8.0
* libevent: upgrade 2.1.8 -> 2.1.11
* libffi: Upgrade to 3.3-rc0
* libglu: upgrade 9.0.0 -> 9.0.1
* libgpg-error: upgrade 1.35 -> 1.36
* libgudev: upgrade 232 -> 233
* libical: upgrade to 3.0.6
* libice: upgrade 1.0.9 -> 1.0.10
* libidn2: upgrade to 2.2.0
* libinput: update to 1.14.1
* libjpeg-turbo: upgrade 2.0.2 -> 2.0.3
* libmodule-build-perl: upgrade 0.4224 -> 0.4229
* libmodulemd: update to 2.6.0
* libnewt: upgrade 0.52.20 -> 0.52.21
* libnl: upgrade to 3.5.0
* libnotify: update to 0.7.8
* libnss-nis: upgrade 3.0 -> 3.1
* libogg: upgrade 1.3.3 -> 1.3.4
* libpam: Upgrade 1.3.0 -> 1.3.1
* libpcap: upgrade 1.9.0 -> 1.9.1
* libpciaccess: upgrade 0.14 -> 0.16
* libpcre2: upgrade 10.32 -> 10.33
* libpng: update to 1.6.37
* libpsl: update to 0.21.0
* librepo: update to 1.10.5
* libsdl2: upgrade 2.0.9 -> 2.0.10
* libsecret: 0.19.0
* libsolf: update to 0.7.5
* libsolv: update to 0.7.6
* libsoup-2.4: upgrade 2.66.1 -> 2.66.2
* libsoup: Upgrade from 2.64.2 to 2.66.1
* libtasn1: upgrade 4.13 -> 4.14
* libtest-needs-perl: upgrade 0.002005 -> 0.002006
* libtirpc: upgrade 1.0.3 -> 1.1.4
* liburcu: update to 0.11.1
* libva: upgrade 2.4.0 -> 2.5.0
* libva-utils: upgrade 2.4.0 -> 2.5.0
* libwebp: upgrade 1.0.2 -> 1.0.3
* libx11-compose-data: upgrade 1.6.7 -> 1.6.8
* libx11: update to 1.6.8
* libxcrypt: update to 4.4.8
* libxdmcp: update to 1.1.3
* libxext: update to 1.3.4
* libxft: upgrade 2.3.2 -> 2.3.3
* libxi: update to 1.7.10
* libxkbfile: update 1.1.0
* libxml2: upgrade 2.9.8 -> 2.9.9
* libxml-sax-perl: upgrade 1.00 -> 1.02
* libxmu: update to 1.1.3
* libxrandr: update to 1.5.2
* libxt: update to 1.2.0
* libxvmc: update to 1.0.11
* libyaml: update to 0.2.2
* lighttpd: Upgrade 1.4.53 -> 1.4.54
* linux-firmware: Upgrade to 20190815
* linux-libc-headers: update to v5.2 headers
* linux-yocto/4.19: update to 4.19.72 and -rt22
* linux-yocto-dev: bump to 5.3-rcX
* linux-yocto: introduce 5.2.17 recipes
* linux-yocto-rt: update to 5.0.5-rt9
* llvm: Update to 8.0.1
* logrotate: upgrade 3.15.0 -> 3.15.1
* ltp: upgrade 20190115 -> 20190517
* lttng-modules: upgrade 2.10.8 -> 2.10.11
* lttng-tools: update to 2.10.7
* lttng-ust: upgrade 2.10.3 -> 2.10.5
* lz4: update to 1.9.2
* makedepend: update to 1.0.6
* man-db: upgrade 2.8.4 -> 2.8.7
* man-pages: upgrade 4.16 -> 5.01
* mc: update to 4.8.23
* mesa-demos: update to 8.4.0
* mesa: Update 19.0.1 -> 19.1.6
* meson: update to 0.51.2
* mmc-utils: update to the latest upstream code
* mobile-broadband-provider-info: upgrade 20190116 -> 20190618
* mpg123: upgrade 1.25.10 -> 1.25.11
* msmtp: 1.6.6 -> 1.8.5
* mtd-utils: Upgrade to 2.1.1
* mtools: update to 4.0.23
* musl: Update to latest master
* ncurses: upgrade 6.1+20181013 -> 6.1+20190803
* nettle: upgrade 3.4.1 -> 3.5.1
* newlib: Upgrade to 3.1.0
* nfs-utils: 2.3.3 -> 2.4.1
* nss: upgrade 3.42.1 -> 3.45
* ofono: upgrade 1.25 -> 1.30
* opensbi: Update from 0.3 to 0.4
* openssh: Upgrade 7.9p1 -> 8.0p1
* openssl: Upgrade 1.1.1b -> 1.1.1d
* opkg: upgrade to version 0.4.1
* opkg-utils: upgrade to version 0.4.1
* orc: update to 0.4.29
* ovmf: Update to version edk2-stable201905
* p11-kit: update to 0.23.16.1
* pango: upgrade 1.42.4 -> 1.44.6
* patchelf: Upgrade 0.9 -> 0.10
* perl: Move perl-sanity -> perl
* perl: update to 5.30.0
* piglit: upgrade to latest revision
* pixman: update to 0.38.4
* pkgconf: upgrade 1.6.0 -> 1.6.3
* ptest-runner: update from 2.3.1 to 2.3.2
* python3-dbus: upgrade 1.2.8 -> 1.2.12
* python3-docutils: update to 0.15
* python3-git: update to 3.0.2
* python3-mako: update to 1.1.0
* python3-numpy: update to 1.17.0
* python3-pbr: update to 5.4.3
* python3-pip: update to 19.2.3
* python3-pycairo: update to 1.18.1
* python3-pygobject: update to 3.34.0
* python3-scons: update to 3.1.1
* python3: upgrade 3.7.3 -> 3.7.4
* python-numpy: update to 1.16.3
* python-scons: update to 3.1.0
* python-setuptools: update to 41.2.0
* python: update to 3.7.3
* qemu: Upgrade from 3.1.0 to 4.1
* quilt: update to 0.66
* quota: update to 4.05
* rng-tools: 6.6 -> 6.7
* ruby: update to 2.5.5
* socat: upgrade 1.7.3.2 -> 1.7.3.3
* sqlite3: update to 3.29.0
* squashfs-tools: upgrade to commit f95864afe883
* strace: Upgrade to 5.3
* subversion: upgrade 1.11.1 -> 1.12.2
* sysprof: upgrade 3.30.2 -> 3.32.0
* sysstat: 12.1.3 -> 12.1.6
* systemd: upgrade to 243
* systemtap: update to 57c9aca9f1ff32a6add10e02ecd33b7314fad499
* tar: update to 1.32
* timezone: update to 2019c
* u-boot: Upgrade from 2019.01 to 2019.07
* uninative: Update to 2.7 release
* usbutils: upgrade 010->012
* util-linux: upgrade to 2.34
* vala: update to 0.44.7
* valgrind: update from 3.14.0 to 3.15.0
* vim: Update to 8.1.1240
* virglrenderer: update 0.7.0 -> 0.8.0
* vte: upgrade 0.52.2 -> 0.56.3
* waffle: upgrade 1.5.2 -> 1.6.0
* wayland-protocols: upgrade 1.17 -> 1.18
* webkitgtk: update to 2.24.4
* weston: upgrade 5.0.0 -> 7.0.0
* wget: update to 1.20.3
* wpa-supplicant: update to 2.9
* x11perf: update to 1.6.1
* x264: upgrade to latest revision
* xauth: upgrade 1.0.10 -> 1.1
* xf86-input-libinput: update to 0.29.0
* xinput: update to 1.6.3
* xkeyboard: upgrade 2.26 -> 2.27
* xorgproto: update to 2019.1
* xrandr: update to 1.5.1
* xserver-xorg: update to 1.20.5
* xtrans: upgrade 1.3.5 -> 1.4.0
* xwininfo: upgrade 1.1.4 -> 1.1.5

