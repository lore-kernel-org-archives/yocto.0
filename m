Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FAFEE00C8F; Fri,  4 Jan 2019 15:26:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,BITCOIN_SPAM_02,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  0.7 BITCOIN_SPAM_02 BitCoin spam pattern 02
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51405E00C81;
	Fri,  4 Jan 2019 15:25:57 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Jan 2019 15:25:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,440,1539673200"; d="scan'208";a="131661082"
Received: from thlien-mobl2.amr.corp.intel.com ([10.255.69.79])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jan 2019 15:25:55 -0800
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <d6b602e1-bd26-88a0-56c1-bad9b5501947@intel.com>
Date: Fri, 4 Jan 2019 15:25:53 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.5.2 (sumo 19.0.2) Released
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
X-List-Received-Date: Fri, 04 Jan 2019 23:26:00 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

We are pleased to announce the latest release of the Yocto Project 2.5.2 (sumo-19.0.2) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.2/poky-sumo-19.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5.2/poky-sumo-19.0.2.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.2/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW51_-_2018-12-06-_Full_Test_Cycle_-_2.5.2_rc1

Thank you for everyone's contributions to this release.

Sincerely,

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com


------------------
yocto-2.5.2 Errata
--------------------

Release Name: eclipse-poky-neon-sumo-19.0.2
Branch: neon/sumo
Tag: neon/sumo-19.0.2
Hash: 303e46a6848f1937d12541a7fd58e61aa1361225
md5: c1cc0784259600cda57fc8b2d88daeee
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.2/eclipse-poky-neon-sumo-19.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5.2/eclipse-poky-neon-sumo-19.0.2.tar.bz2

Release Name: eclipse-poky-oxygen-sumo-19.0.2
Branch: oxygen/sumo
Tag: oxygen/sumo-19.0.2
Hash: f1a20dc6a5a252a4ed4484b618d579cbbc7d146e
md5: b393dd0eacbf3748da7dfbbe11fa921d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.2/eclipse-poky-oxygen-sumo-19.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5.2/eclipse-poky-oxygen-sumo-19.0.2.tar.bz2

Release Name: meta-gplv2-sumo-19.0.2
Branch: sumo
Tag: sumo-19.0.2
Hash: d7687d404bbc9ba3f44ec43ea8828d9071033513
md5: 36c5a6d6bfee01f1606a5ab7d5dec0c5
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.2/meta-gplv2-sumo-19.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5.2/meta-gplv2-sumo-19.0.2.tar.bz2

Release Name: meta-intel-sumo-19.0.2
Branch: sumo
Tag: sumo-19.0.2
Hash: 90af97d23fb2a56187c2fe2a3f4f4190d7cc2605
md5: 1b5f28a32b37bdd9cdd9c38fc99d2a36
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.2/meta-intel-sumo-19.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5.2/meta-intel-sumo-19.0.2.tar.bz2

Release Name: meta-mingw-sumo-19.0.2
Branch: sumo
Tag: sumo-19.0.2
Hash: 628dcfed62ce8dcc408e5b4a5e5c0aaa921b20ad
md5: 184800de4dc34a8365c053b3e49c7b46
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.2/meta-mingw-sumo-19.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5.2/meta-mingw-sumo-19.0.2.tar.bz2

Release Name: meta-qt3-sumo-19.0.2
Branch: sumo
Tag: sumo-19.0.2
Hash: 02f273cba6c25f5cf20cb66d8a417a83772c3179
md5: c2b8c8aa38a69e47a3f2d055341cf786
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.2/meta-qt3-sumo-19.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5.2/meta-qt3-sumo-19.0.2.tar.bz2

Release Name: meta-qt4-sumo-19.0.2
Branch: sumo
Tag: sumo-19.0.2
Hash: 8e791c40140460825956430ba86b6266fdec0a93
md5: 849b38dc2f5978887fac5cbb21bf874c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.2/meta-qt4-sumo-19.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5.2/meta-qt4-sumo-19.0.2.tar.bz2

Release Name: poky-sumo-19.0.2
Branch: sumo
Tag: sumo-19.0.2
Hash: 95ebfb33e4c0aa9669f318e061a4d7540b84f4ac
md5: 11cef9b136b2554cd52f30564b573e6d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.5.2/poky-sumo-19.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.5.2/poky-sumo-19.0.2.tar.bz2


---------------
 Known Issues
---------------
Bug 13101 - eclipse oxygen-master build failing consistently
https://bugzilla.yoctoproject.org/show_bug.cgi?id=13101
 
This build referenced a mirror location where files are retired and expire. A server-side redirect allows the build to complete complete successfully. Please see the bug for more detail.

---------------
Security Fixes
---------------
curl: actually apply latest CVE patches
unzip: actually apply CVE-2018-18384
curl: fix for CVE-2018-16839/CVE-2018-16840/CVE-2018-16842
unzip: fix for CVE-2018-18384
curl: CVE-2018-14618
nasm: fix CVE-2018-1000667
python: backport patch to fix CVE-2018-14647
python: backport patch to fix CVE-2018-1000802
curl: extend CVE_PRODUCT
cve-check: Allow multiple entries in CVE_PRODUCT
libtiff: fix CVE-2017-17095
libsndfile1: CVE-2018-13139
nasm: fix CVE-2018-10016
git: CVE-2018-11233
python3: CVE-2018-1061
libxml2: CVE-2018-14404
libcroco: CVE-2017-7961
gnupg: CVE-2018-9234
glibc: fix CVE-2018-11237
sqlite3: CVE-2018-8740
libpng: CVE-2018-13785
busybox: CVE-2017-15874
cve-check.bbclass: do not download the CVE DB in package-specific tasks
cve-check.bbclass: detect CVE IDs listed on multiple lines
lrzsz: fix CVE-2018-10195
libcgroup: CVE-2018-14348
libarchive: CVE-2017-14501
wpa-supplicant: fix CVE-2018-14526
libice: patch for CVE-2017-2626
taglib: Security fix CVE-2018-11439
libid3tag: patch for CVE-2004-2779
libcroco: patch for CVE-2017-7960
squashfs-tools: patch for CVE-2015-4645(4646)
libexif: patch for CVE-2017-7544
blktrace: Security fix CVE-2018-10689
patch: fix CVE-2018-6952
perl: CVE-2018-12015
perl: CVE-2018-6913
perl: CVE-2018-6797
perl: CVE-2018-6798
qemu: CVE-2018-12617
qemu: CVE-2018-7550
python: CVE-2018-1000030
procps: CVE-2018-1124
shadow: CVE-2018-7169
gnupg: CVE-2018-12020
git: CVE-2018-11235
libgcrypt: CVE-2018-0495
coreutils: CVE-2017-18018
libsndfile1: CVE-2017-14634
libsndfile1: CVE-2017-14245 CVE-2017-14246
libarchive: CVE-2017-14503
flac: CVE-2017-6888
nasm: fix CVE-2018-8883 & CVE-2018-8882 & CVE-2018-10316
unzip: fix CVE-2018-1000035
libvorbis: CVE-2018-10392
libvorbis: CVE-2017-14160 CVE-2018-10393


---------------
Fixes
---------------
testsdk: Improvements to the json logging
testimage: Improvements to the json logging
oeqa/selftest/esdk: Fix typo causing test failure
default-versions.inc: Make PREFERRED_VERSION_openssl* overwritable
oeqa/selftest/esdk: Ensure parent directory exists
image-buildinfo,oeqa/selftest/containerimage: Ensure image-buildinfo doesn't break tests
oeqa/utils/metadata: Allow to function without the git module
oeqa/selftest: Standardize json logging output directory
oeqa/selftest: Improvements to the json logging
testsdk.bbclass: write testresult to json files
testimage.bbclass: write testresult to json files
oeqa/selftest/context: write testresult to json files
oeqa/runner: Sort the test result output by result class
oeqa/runner: Always show a summary of success/fail/error/skip counts
oeqa/runtime/ptest: Inject results+logs into stored json results file
oeqa/core/runner: write testresult to json files
oeqa/core/runner: refactor for OEQA to write json testresult
oeqa: Remove xmlrunner
oeqa/runner: Simplify code
oeqa/core/threaded: Remove in favour of using concurrenttests
oeqa/runner: Ensure we don't print misleading results output
oeqa/core/runner: Improve test case comparision
oeqa/selftest/context: Improve log file handling
oeqa/utils/qemurunner.py: Fix python regex warnings
oeqa/selftest/context: Replace deprecated imp module usage
oeqa/utils/commands: Avoid unclosed file warnings
oeqa/loader: Fix deprecation warning
oeqa/selftest/esdk: run selftest inside workdir not /tmp
oeqa: don't litter /tmp with temporary directories
oeqa/utils/qemurunner: Avoid tracebacks on closed files
oeqa/selftest/runqemu: Improve testcase failure handling
oeqa/oelib/path: don't leak temporary directories
oeqa/selftest/buildoptions: Ensure diskmon tests run consistently
oeqa/selftest/buildoptions: Improve ccache test
oeqa/qemurunner: Remove resource python warnings
oeqa/utils/commands: Avoid log message duplication
oeqa/utils/qemurunner: Fix python ResourceWarning for unclosed file
oeqa/utils/commands: Add extra qemu failure logging
oeqa/selftest/buildoptions: Improve ccache test failure output
oeqa/selftest/case: Use bb.utils.remove() instead of shutil.remove()
oeqa/selftest/signing: Use do_populate_lic target instead of do_package
oeqa/selftest/signing: Allow tests not to need gpg on the host
oeqa/selftest/signing: Skip tests if gpg isn't found
scripts/runqemu: Improve lockfile handling for python with close_fd=True
scripts/runqemu: Tidy up lock handling code
scripts/runqemu: Replace subprocess.run() for compatibilty
documentation: Prepared for 2.5.2 document release
bitbake: bitbake-user-manual: Added "usehead" parameter.
bitbake: main: Don't use print() directly, use logger
bitbake: process: Flush key output to logs
bitbake: runqueue: Ensure disk monitor is started when no setscene tasks are run
bitbake: server/process: Fix ConnectionRefusedError tracebacks
bitbake: lib/bb/server: Avoid UnboundLocalError traceback
bitbake: server/process: Fix unclosed socket warnings upon server connection refused
build-appliance-image: Update to sumo head revision
poky.conf: Bump version for 2.5.2 sumo release
linux-yocto: update genericx86* SRCREV for 4.14
poky.conf: Update the distros we test against on the autobuilder
sanity: Add check for WSL
busybox: make busybox.links.{suid, nosuid} reproducible
shadow: improve reproducibility by hard-coding shell path
socat: fix LICENSE
gnupg: patch gnupg-native to allow path relocation
bitbake: bitbake: toaster: allow OE_ROOT to be provided through environment
dhcp: allow for excluding the external bind
oeqa/selftest/recipetool: Fix problems from changing upstream source
base.bbclass: avoid 'find -ignore_readdir_race -delete'
archiver: Drop unwanted directories
meta: Use double colon for chown OWNER:GROUP
crosssdk: Remove usage of host flags for cross-compilation
pixman: Trim license info extracted from pixman-matrix.c
apr-util: Trim license info extracted from apu_version.h
apr: Trim license info extracted from apr_lib.h
common-licenses: Correct the FreeType license text
wic: isoimage-isohybrid: fix UEFI spec breakage
selftest/wic: Improve error message for test_fixed_size
oeqa/selftest/wic: Ensure initramfs exists for test_iso_image
oeqa/selftest/wic: Use a subdir of builddir, not /var/
kernel-dev: Updated phrasing for what a "defconfig" file is.
oeqa/selftest/runtime_test: Ensure we build/use gnupg-native
curl: Include the complete license information
apt: update SRC_URI
m4: Workaround gnulib's fseeko.c implementation
python: don't use runtime checks to identify float endianism
python: clean up ptest
python: update to version 2.7.15
linux-yocto/4.14: update to v4.14.76
linux-yocto-rt: fixup 4.14 merge issues
linux-yocto/4.14: fix beaglebone configuration warnings
linux-yocto: enable pci and CRYPTO_DEV_VIRTIO
linux-yocto/4.14: update to v4.14.71
linux-yocto/4.14: fix kernel configuration audit warnings
linux-yocto: tweak RTC configuration
linux-yocto: configuration warning fixes
linux-yocto-rt: Add paravirt_kvm support for qemux86-64
linux-yocto/4.14/4.18: address kernel configuration warnings
kernel-yocto/cfg: configuration warning fixes
base-files: change permissions on /sys and /proc
os-release: move to nonarch_libdir
tzdata: update to 2018f
tzcode: update to 2018f
tzdata: update to 2018e
tzcode-native: updatet to 2018e
yocto-uninative: Upgrade to verson 2.3 which includes glibc 2.28
kernel: specify dependencies for compilation for config tasks
valgrind: fix compile ptest failure on mips32
valgrind: fix ptest compilation for PowerPC64
perl: skip tests that are not useful
externalsrc.bbclass: Set BB_DONT_CACHE for non-target recipes
rootfs: always update the opkg index
runqemu: fix handling of SIGTERM and the problem of line wrapping
runqemu: exit gracefully with an error message if qemu system is not evaluated
runqemu: add SIGTERM handler to make sure things are cleaned up
x264: Disable asm on musl/x86
recipes: Update git.gnome.org addresses after upstream changes
checklayer: avoid recursive loop in add_layer_dependencies
bitbake: fetcher: Fixed remote removal not throwing exception.
initramfs-framework/udev: call settle before kill
qemux86-directdisk: remove mem= parameter
cmake: put cmake.m4 and toolchain file in PN
mkefidisk: fix installation of kernel image
libsdl2: Fix left rotated display for RaspPi/VC4/GLES2
security_flags: disable static PIE in glibc
bitbake: main: Fix environment handling for UI module imports
bitbake: toaster: Fix bitbake flexible path error from Bugzilla #12891
apr-util: fix ptest fail problem
linux-yocto/4.14: update to v4.14.67
linux-yocto/4.14: update to v4.14.62
linux-yocto/4.12: update to v4.12.28
binutils: Change the ARM assembler's ADR and ADRl pseudo-ops so that they will only set the bottom bit of imported thumb function symbols if the -mthumb-interwork option is active.
os-release: fix to install in the expected location
serf: Fix Sconstruct build with python 3.7
xserver-xorg: config: fix NULL value detection for ID_INPUT being unset
busybox/mdev-mount.sh: Fix partition detect and cleanup mountpoint on fail
busybox: move init related configs to init.cfg
busybox: handle syslog
util-linux: upgrade 2.32 -> 2.32.1
bitbake: bitbake: toaster: Fix comparison in recipe template
bitbake: toaster/layerdetails.js: don't hide local layer info
bitbake: toaster/models.py: allow local paths for custom recipe's base
bitbake: toaster/checksettings: allow CUSTOM_XML_ONLY setting through env
bitbake: toastergui/newproject.html: fix release divs
bitbake: toaster/widgets.py: avoid divide by zero issues
bitbake: bitbake: toaster: allow TOASTER_DIR to be overridden from cmdline
bitbake: toaster: use a more flexible way to find bitbake
bitbake: toaster: allow pokydirname to be evaluated when all layers are local
bitbake: checksum: sanity check path when recursively checksumming
bitbake: utils/md5_file: don't iterate line-by-line
swig: Remove superfluous python dependency
unzip: fix symlink problem
openssl: update 1.1.0h -> 1.1.0i
openssl: update 1.0.2o -> 1.0.2p
openssl-1.1: fix c_rehash perl errors
openssl_1.0: drop unnecessary call to perlpath.pl from do_configure()
openssl_1.0: drop unnecessary dependency on makedepend-native
openssl: fix missing dependency on hostperl-runtime-native
openssl_1.0: squash whitespace in CC_INFO
openssl_1.0: add PACKAGECONFIG option to control manpages
openssl_1.0: drop unmaintained darwin support
openssl_1.0: drop obsolete exporting of AS, EX_LIBS and DIRS
openssl_1.0: drop obsolete ca.patch
openssl: minor indent fixes
openssl: support musl-x32 build
openssl: remove uclibc remnants
openssl_1.0: avoid running make twice for target do_compile()
openssl_1.0: drop leading "-" from no-ssl3 config option
openssl_1.0: fix cryptodev-linux PACKAGECONFIG support
openssl_1.0: drop curly brackets from shell local variables
openssl_1.0: minor recipe formatting tweaks etc
openssl_1.0: merge openssl10.inc into the openssl_1.0.2o.bb recipe
openssl_1.1: minor recipe formatting tweaks etc
openssl_1.1: avoid using += with an over-ride
openssl-nativesdk: Fix "can't open config file" warning
openssl: disable ccache usage
openssl: fix upstream version check for 1.0 version
wic/qemux86: don't pass ip parameter to kernel in wks
alsa-lib: Cleanup packaging
classes: sanity-check LIC_FILES_CHKSUM
bzip2: use Yocto Project mirror for SRC_URI
bitbake: tests/fetch: Update gnome.org urls after upstream changes
multilib_header: recognize BPF as a target
glibc: Make bits/wordsize.h multilibbed again
oe-pkgdata-util: package-info: Re-add support for the --extra option
oe-pkgdata-util: Make parse_pkgdatafile() support package suffixed vars
oe-pkgdata-util: lookup-recipe, package-info: Don't finish prematurely
devtool/sdk.py: error out in case of downloading file failure
documentation: Updated for a 2.5.1 release
ref-manual: Removed non-existant variable from PACKAGE_WRITE_DEPS description
sdk-manual: Fixed bad anchor string.
sdk-manual: Updated section on minimizing eSDK installer size
sdk-manual: Converted bullet list to ordered list
sdk-manual: Updated "Providing Additional Installable Extensible SDK Content"
sdk-manual: Provided better wording for sharing HTTP or HTTPS server
sdk-manual: Updates to sections for updating installed Ext SDKs
sdk-manual: Changed title to updating the SDK after install
sdk-manual: Fixed grammar error
sdk-manual: Updated section on changing title of extensible SDK installer
ref-manual: Updated DISTRO_NAME variable description.
ref-manual: Updated the DISTRO variable description
sdk-manual: Grammar fix
sdk-manual: Updates to "Adjusting the Extensible SDK to Suit Build Host"
sdk-manual: Updates to "Configuring the Extensible SDK" section
ref-manual: Fixed cross-reference wording in SDK_LOCAL_CONF_WHITELIST
ref-manual: Fixed grammar error in SDK_INHERIT_BLACKLIST description
ref-manual: Added cross-reference to SDK_LOCAL_CONF_BLACKLIST var
ref-manual: Updated the SDK_INHERIT_BLACKLIST variable description
ref-manual: Updated the SDK_LOCAL_CONF_WHITELIST variable description
ref-manual: Updated the SDK_LOCAL_CONF_BLACKLIST variable description
sdk-manual, mega-manual: Updated the fig for installed ext. SDK
sdk-manual, mega-manual: Updated standard SDK install directory figure
sdk-manual: Final edits to the extracting root filesystem section
sdk-manual: Added note in step to set SDKMACHINE


