Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF430E00D16; Mon, 25 Sep 2017 16:58:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	TO_NO_BRKTS_PCNT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TO_NO_BRKTS_PCNT To: lacks brackets + percentage
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45DD6E00C89;
	Mon, 25 Sep 2017 16:58:37 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga105.fm.intel.com with ESMTP; 25 Sep 2017 16:58:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,438,1500966000"; d="scan'208";a="903786367"
Received: from jjohnso1-mobl.amr.corp.intel.com ([10.255.4.163])
	by FMSMGA003.fm.intel.com with ESMTP; 25 Sep 2017 16:58:36 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <59C9982C.6010704@intel.com>
Date: Mon, 25 Sep 2017 16:58:36 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.3.2 (pyro 17.0.2) Released
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
X-List-Received-Date: Mon, 25 Sep 2017 23:58:41 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The latest release of the Yocto Project 2.3.2 (pyro-17.0.2) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.2/poky-pyro-17.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.2/poky-pyro-17.0.2.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.2/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW38_-_2017-09-20-_Full_Test_Cycle_-_2.3.2_rc1

Thank you to everyone for your contributions to this release!

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com


------------------
yocto-2.3.2 Errata
--------------------

Release Name: eclipse-poky-mars-pyro-17.0.2
Branch: mars/pyro
Tag: mars/pyro-17.0.2
Hash: 92aa0e79e8b01c56f0670af3cd8296ec68b43350
md5: 127844bae64343d1397c12d04eb2bf46
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.2/eclipse-poky-mars-pyro-17.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.2/eclipse-poky-mars-pyro-17.0.2.tar.bz2

Release Name: eclipse-poky-neon-pyro-17.0.2
Branch: neon/pyro
Tag: neon/pyro-17.0.2
Hash: 83e0083ef3a71e10039ace7d18057dddc154408b
md5: 5a10f42077876d72caafa1e15d8efb8b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.2/eclipse-poky-neon-pyro-17.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.2/eclipse-poky-neon-pyro-17.0.2.tar.bz2

Release Name: meta-qt3-pyro-17.0.2
Branch: pyro
Tag: pyro-17.0.2
Hash: f33b73a9563f2dfdfd0ee37b61d65d90197a456f
md5: 60b56ee643f21dd576fda1278a1f5f36
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.2/meta-qt3-pyro-17.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.2/meta-qt3-pyro-17.0.2.tar.bz2

Release Name: meta-qt4-pyro-17.0.2
Branch: pyro
Tag: pyro-17.0.2
Hash: 88989ae3abe98b30089e7518d3adabe990c40a10
md5: c9f40bd1022ee9219f179bc8b4e46d94
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.2/meta-qt4-pyro-17.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.2/meta-qt4-pyro-17.0.2.tar.bz2

Release Name: poky-pyro-17.0.2
Branch: pyro
Tag: pyro-17.0.2
Hash: ce26a57e04ad65c02087629701d96448a44e73d5
md5: 97e770b63320860fc0c12cad23480f4a
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.3.2/poky-pyro-17.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.3.2/poky-pyro-17.0.2.tar.bz2


---------------
 Known Issues
---------------
N/A

---------------
Security Fixes
---------------
linuux-yocto/4.1: update to 4.1.43 plus bluetooth CVE-2017-1000251
linux-yocto/4.9: bluetooth: CVE-2017-1000251
linux-yocto/4.4: bluetooth: CVE-2017-1000251
linux-yocto/4.10: bluetooth: CVE-2017-1000251
linux-yocto/4.10: CVE & misc fixes
libxml2: Fix CVE-2017-8872
taglib: Security fix CVE-2017-12678
ghostscript: CVE-2017-9727, -9835, -11714
ghostscript: fix several CVEs by adding bounds checking
libtasn1: CVE-2017-10790
libsndfile1: Fix CVE-2017-8363
libsndfile1: Fix CVE-2017-8362
libsndfile1: Fix CVE-2017-8361 and CVE-2017-8365
libsndfile1: Fix CVE-2017-6892
wget: Security fix CVE-2017-6508
xserver-xorg: Fix CVE-2017-10971
ruby: fix CVE-2017-922{6-9}
ruby: fix CVE-2017-9224
connman: Fix for CVE-2017-12865
kernel.bbclass: set CVE_PRODUCT to linux_kernel if not set by recipe
cve-check.bbclass: use weak assignment for default CVE_PRODUCT
wpa-supplicant_2.6.bb: set CVE_PRODUCT to wpa_supplicant
sqlite3.inc: set CVE_PRODUCT to sqlite
quota_4.03.bb: set CVE_PRODUCT to linux_diskquota
lttng-ust_2.9.1.bb: set CVE_PRODUCT to ust
python.inc: set CVE_PRODUCT to python
nspr_4.14.bb: set CVE_PRODUCT to netscape_portable_runtime
libsndfile1_1.0.28.bb: set CVE_PRODUCT to libsndfile
libsamplerate0_0.1.9.bb: set CVE_PRODUCT to libsamplerate
libpcre2_10.23.bb: set CVE_PRODUCT to pcre2
libpcre_8.40.bb: set CVE_PRODUCT to prce
icu.inc: set CVE_PRODUCT to international_components_for_unicode
glibc-common.inc: set CVE_PRODUCT to glibc
glib.inc: set CVE_PRODUCT to glib
gcc-common.inc: set CVE_PRODUCT to gcc
flac_1.3.1.bb: set CVE_PRODUCT to libflac
eglinfo.inc: set CVE_PRODUCT to eglinfo
bluez5.inc: set CVE_PRODUCT to bluez
acpid.inc: set CVE_PRODUCT to acpid2
systemd: refuse to load units with errors (CVE-2017-1000082)
libxml2: Fix CVE-2017-0663
libxml2: Fix CVE-2017-5969
libxml2: Fix CVE-2017-9049 and CVE-2017-9050
libxml2: Fix CVE-2017-9047 and CVE-2017-9048
libgcrypt: fix CVE-2017-7526
libgcrypt: fix CVE-2017-9526

---------------
Fixes
---------------
image.bbclass: Sorted ctypes to avoid basehash error
bitbake: cooker: add BB_CMDLINE to enable access to UI command line with memres
linux-yocto/4.1: generix86* bsp fix perf issue with gcc >=7
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.1
meta-yocto-bsp: bump 4.1 to latest linux stable kernel for the non-x86 BSPs
meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.9
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.10
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.4
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.10
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.9
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.4
meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.9
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.4
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.1
meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.10
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.9
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.4
meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.10
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.9
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.4
linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.1
gcc-6.3.inc: Use ucontext_t not struct ucontext.
libproxy: use stable download URL
linux-yocto/4.9: update to v4.9.49
linux-yocto/4.4: update to v4.4.87
(PRE)MIRRORS: fix pattern for npm:// without slash
waffle: fix REQUIRED_DISTRO_FEATURES and PACKAGECONFIG virtual/libgl dependencies
rootfs-postcommands: add test for unsatisfied RRECOMMENDS
rootfs-postcommands: remove empty line
rootfs-postcommands.bbclass: Filter out dangling symlinks in ssh_allow_empty_password()
alsa-utils: Do not hardcode path to /lib/udev
package_rpm.bbclass: disable generation of .build-id links
package_rpm.bbclass: use multithreaded xz compression
rpm: allow arch-dependent binaries in noarch packages
bitbake: cooker.py: Fix layer priority processing
bitbake: toaster: recipe links broken for default layers
bitbake: toaster: edit column list not sorted
bitbake: toaster: set default pokydirname if no external layers
bitbake: toaster: debug message for lists layers missing separators
bitbake: toaster: Order column in Tasks selectable
bitbake: toaster: display error when the fstype select is empty
bitbake: cooker: ensure monkey-patching in collect_bbfiles() gets undone on error
bitbake: cooker: fix watching empty directories
bitbake: cooker: Track directories searched for bbappend/bb files
bitbake.conf: add bzr to HOSTTOOLS_NONFATAL
glibc-locale: add runtime dependency on glibc
Revert "expat: Don't use getrandom() in the -native case"
poky: Update version to 2.3.2
grub: Fix build with gcc7
staging: Fix a logic error which caused dependency removal
staging: Ensure dependencies are removed before being added
staging: Avoid sysroot removal races
classes/license: drop erroneous sha256 parameter in LIC_FILES_CHKSUM
linux-yocto/4.4: update to v4.4.85
linux-yocto/4.9: update to v4.9.46
linux-yocto/4.10/4.9: fix BRCMFMAC_PROTO_MSGBUF warning
linux-yocto/4.10: fix aufs build
kernel-yocto: configuration updates: x86 features
linux-yocto/4.1: fix fsl-ls10xx sdhci
linux-yocto/4.9: update to v4.9.36
linux-yocto/4.1: update to v4.1.42
kernel-yocto: configuration updates: x86 features
terminal.py: fix devshell with mate-terminal
terminal.py: avoid 100% cpu while waiting for phonehome pid file
terminal: wait for terminal task to finish before procedding
bash: memleak bug fix for builtin command read
libxml2: Revert "Add an XML_PARSE_NOXXE flag to block all entities loading even local"
e2fsprogs: fix ptest script
tiff: Security fixes
expat: Don't use getrandom() in the -native case
nspr: Fix build error due to missing stdint.h> include
icu: Fix build with glibc 2.26
python-numpy: Fix issues with recent glibc versions
qemu: Backport a patch for recent glibc versions
python3-native: Avoid use of getentropy/getrandom
ref-manual: Fixed broken link.
ref-manual: Removed duplicate section id.
ref-manual: Added a cross-reference link to "tmp/sysroots-components"
ref-manual: Updated SSTATE_SCAN_FILES variable description
ref-manual: Added tmp/sysroots-components task
ref-manual: Corrected spelling errors
documentation: Preparation for 2.3.2 release
ref-manual: Fixed YP Term problem with botched earlier commit
ref-manual: Added new variable
kernel-dev: Updated "Creating and Preparing a Layer" section
ref-manual: Fixed links in do_prepare_recipe_sysroot task
ref-manual: Edited Migration section
ref-manual: Edits to staging.bbclass
ref-manual: Updated build/tmp/work/tunearch/recipename/version
dev-manual: Updated "Sharing Files Between Recipes"
ref-manual: Updated Documentation required packages
dev-manual: Updates to "Using .bbappend Files in Your Layer"
dev-manual: Changed wording that intros layer creation steps
package.bbclass: Restore functionality to detect RPM dependencies
libcheck: fix file-rdeps QA issue
rpm: Disable perl dependency generation
ltp: Skip the filedependency scan
bind: Use correct python interpreter path
package_rpm.bbclass: Filter out unwanted file deps for nativesdk packages
git: Do not install git cvsserver and git svn by default
rpm: Add dependencies on bash, perl and python3-core
perl: Do not generate file dependencies for perl-ptest
insane.bbclass: Ignore perl as dependency for nativesdk packages
rpm: Add a new option --alldeps to rpmdeps
rpm: Use conditional to access %{_docdir} in macros.in
rpm: Do not require that ELF binaries are executable to be identifiable
rpm: Create a wrapper for the native rpmdeps tool
rpm: Simplify the creation of wrappers for the native tools
toaster.bbclass: Ignore some dependencies in toaster_buildhistory_dump()
toaster.bbclass: Simplify parsing of depends.dot
buildhistory.bbclass: Improve the generated depends.dot file
insane.bbclass: Improve the handling of runtime file dependencies
insane.bbclass: Report all file-rdeps errors, not just the first
libxml2: Make ptest run the Python tests if Python support is enabled
libxml2: move python module to Python 3
package_manager.py: Generate correct RPM package names again
gtk+3: Update the patches to work with old versions of patch
rootfs-postcommands.bbclass: Prevent linking testdata to itself
gnu-efi: Fix build with gcc7
chrpath: use https for SRC_URI
systemtap: ensure systemtap-native is available
ncurses: add SYSROOT_DESTDIR for siteconfig_gencache
mirrors.bbclass: provide git repo fallbacks using the https protocol
gnu-config: update SRC_URI to new savannah.gnu.org hostname
image: Fix "metadata is not deterministic" when chaining 2+ CONVERSION_CMDs
image.bbclass: Correct chaining compression support
mesa.inc: drop wrong path in --with-llvm-prefix and export LLVM_CONFIG
insane.bbclass: fix override handling in RDEPENDS QA
icecc.bbclass: prevent nativesdk builds depending on target specific KERNEL_CC
v86d, qemuboot-x86.inc: use KERNEL_MODULE_AUTOLOAD+KERNEL_MODULE_PROBECONF for uvesafb instead of fbsetup init script
linux-libc-headers: fix duplicate IFF_LOWER_UP DORMANT ECHO on musl
package_manager: Fix support for NO_RECOMMENDATONS
kernel.bbclass: fix KERNEL_IMAGETYPE(S) for Image.gz
lsof: update SRC_URI
lsof: minor recipe cleanup
lsof: clear setuid
elfutils: use HTTP instead of FTP to fetch
uninative: Update to 1.7 uninative release
poky.ent: Updated CentOS required package
poky.ent: Corrected package duplication
bitbake: toaster: noweb should init database
bitbake: toaster: get_last_build_id not called correctly
bitbake: toaster: add getMessage to MockEvent
bitbake: toaster: fail on layers with sub-layer
bitbake: toaster: add ID's to build menu links
bitbake: toaster: add ID's to navigation links
classes/staging: change fixme debug message from note to debug
linux-yocto/4.9: update to v4.9.36
linux-yocto/4.4: update to v4.4.76
kernel-yocto/meta: smp configuration changes
linux-yocto/4.4: update to v4.4.71
linux-yocto/4.9: update to 4.9.31
linux-yocto/4.10: update to v4.10.17
linux-yocto-rt: 4.9-rt18
linux-yocto/meta: configuration changes (wifi, kexec and nft)
kernel/meta: add virtualbox configuration fragment
linux-yocto/meta: smp: Add config X86_BIGSMP since its needed when NR_CPUS > 8
linux-yocto/meta: bluetooth: Adds BT_BREDR and BT_LE, which are needed as dependencies
linux-yocto/4.1: fix gcc7 compilation and v4.1.39
linux-yocto/4.9: update to v4.9.27
linux-yocto/4.4: update to v4.4.67
linux-yocto/4.10: update to v4.10.15
kernel-yocto: propagate configuration errors to bbclass
recipetool: git reformat URI mangling & parameter stripped
systemd: workaround login failure on qemumips64 when 'pam' is enabled
yocto-compat-layer.py: make signature check code reusable
yocto-compat-layer.py: allow README with suffix
yocto-compat-layer.py: add test_world
yocto-compat-layer.py: apply test_signatures to all layers
yocto-compat-layer.py: tolerate broken world builds during signature diff
yocto-compat-layer.py: avoid adding layers more than once
iptables: Apply 0001-fix-build-with-musl.patch unconditionally
tzcode-native: quote ${CC}
qemuboot.conf: make cpus match built artifacts
package_manager.py: set dnf's releasever setting from DISTRO_CODENAME
zlib: Pass pre-calculate uname enable re-entrant flags
git: Add a dependency on perl for gitweb
texi2html: Add a dependency on perl
linux-firmware: Avoid a dependency on python-core
libpcap: apply fix from upstream to fix build race
tzdata: Install zone1970.tab
libxml2: Avoid reparsing and simplify control flow in xmlParseStartTag2
libxml2: Disable LeakSanitizer when running API tests
classes/buildhistory: fix failures collecting output signatures
tcf-agent: kill with USR2 in systemd stop
tcf-agent: Fix daemon termination


