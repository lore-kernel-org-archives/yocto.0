Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8161BE00A54; Mon,  4 Feb 2019 16:06:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B76C1E00A0C;
	Mon,  4 Feb 2019 16:06:37 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Feb 2019 16:06:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,560,1539673200"; d="scan'208";a="113714226"
Received: from rretanab-mobl2.amr.corp.intel.com ([10.255.87.137])
	by orsmga006.jf.intel.com with ESMTP; 04 Feb 2019 16:06:35 -0800
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <1c72bbef-7ab9-6a0e-7396-6d90f84f9b65@intel.com>
Date: Mon, 4 Feb 2019 16:06:35 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.6.1 (thud 20.0.1) Released
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
X-List-Received-Date: Tue, 05 Feb 2019 00:06:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit


We are pleased to announce the latest release of the Yocto Project 2.6.1 (thud-20.0.1) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.1/poky-thud-20.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.1/poky-thud-20.0.1.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.1/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW02_-_2019-01-09_-_Full_Test_Cycle_2.6.1_RC1 

Thank you for everyone's contributions to this release.

Sincerely,

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com


------------------
yocto-2.6.1 Errata
--------------------

Release Name: poky-thud-20.0.1
Branch: thud
Tag: thud-20.0.1
Hash: 1cab405d88149fd63322a867c6adb4a80ba68db3
md5: 392dad457a33761772a7b95d105352cf
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.1/poky-thud-20.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.1/poky-thud-20.0.1.tar.bz2

Release Name: eclipse-poky-neon-thud-20.0.1
Branch: neon/thud
Tag: neon/thud-20.0.1
Hash: 9ab82dc61d603f3b1456059e9afafab806d0ca0a
md5: 4574709f7f96c8c557267236ef9a95a9
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.1/eclipse-poky-neon-thud-20.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.1/eclipse-poky-neon-thud-20.0.1.tar.bz2

Release Name: eclipse-poky-oxygen-thud-20.0.1
Branch: oxygen/thud
Tag: oxygen/thud-20.0.1
Hash: 94df2cc13127b7347b26e473c3b5c583f9a2b350
md5: 27c29ca5bd266bd4bf1052c507adb3ed
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.1/eclipse-poky-oxygen-thud-20.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.1/eclipse-poky-oxygen-thud-20.0.1.tar.bz2

Release Name: meta-gplv2-thud-20.0.1
Branch: thud
Tag: thud-20.0.1
Hash: aabc30f3bd03f97326fb8596910b94639fea7575
md5: 46205a0ed058456849f6709d0d733726
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.1/meta-gplv2-thud-20.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.1/meta-gplv2-thud-20.0.1.tar.bz2

Release Name: meta-intel-thud-20.0.1
Branch: thud
Tag: thud-20.0.1
Hash: 7ea89b9ddcdd3de1629bae1465425c8077c5aa06
md5: b1d483aeb2d6887ce59dacca0004cf80
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.1/meta-intel-thud-20.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.1/meta-intel-thud-20.0.1.tar.bz2

Release Name: meta-mingw-thud-20.0.1
Branch: thud
Tag: thud-20.0.1
Hash: b4227458cd5bd73beb8ae8e54b6365f326178092
md5: bb6e6bc6758963fc1ef856f35d37ec40
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.1/meta-mingw-thud-20.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.1/meta-mingw-thud-20.0.1.tar.bz2

Release Name: meta-qt3-thud-20.0.1
Branch: thud
Tag: thud-20.0.1
Hash: 23d7543ebd7e82ba95cbe19043ae4229bdb3b6b1
md5: 6ef2954c0428675daefe5e0887d259c3
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.1/meta-qt3-thud-20.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.1/meta-qt3-thud-20.0.1.tar.bz2

Release Name: meta-qt4-thud-20.0.1
Branch: thud
Tag: thud-20.0.1
Hash: b37d8b93924b314df3591b4a61e194ff3feb5517
md5: c0ec4d8521b0bfe9b16b72988b515af4
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.1/meta-qt4-thud-20.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6.1/meta-qt4-thud-20.0.1.tar.bz2


---------------
 Known Issues
---------------
Bug# 13143: bitbake core-image-minimal failed because no module named 'gpg' on CentOS 7 and OpenSuse 42.3 
https://bugzilla.yoctoproject.org/show_bug.cgi?id=13143 

Bug# 12991: Bitbake build-appliance-image getting failed during building image due to webkitgtk package
https://bugzilla.yoctoproject.org/show_bug.cgi?id=12991

Both of these bugs are still being root caused. Please see the respective bugs for steps to reproduce and further details.
 

---------------
Security Fixes
---------------
linux-yocto/4.18: integrate CVE fixes
ref-manual: Added GCCVERSION variable description to glossary.
curl: actually apply latest CVE patches
unzip: actually apply CVE-2018-18384
binutils: fix four CVE issues
curl: fix for CVE-2018-16839/CVE-2018-16840/CVE-2018-16842
openssl: fix CVE-2018-0735 for 1.1.1
openssl: fix CVE-2018-0734 for both 1.0.2p and 1.1.1
ghostscript: fix CVE-2018-18284
ghostscript: fix CVE-2018-18073
ghostscript: fix CVE-2018-17961
elfutils: fix CVE-2018-18520 & CVE-2018-18521 & CVE-2018-18310
nasm: fix CVE-2018-1000667
unzip: fix for CVE-2018-18384
qemu: fix for CVE-2018-10839
systemd: fix CVE-2018-15688
systemd: fix CVE-2018-15687
systemd: fix CVE-2018-15686
nss: update to 3.39 includes CVE-2018-12384
xserver-xorg: fix CVE-2018-14665


---------------
Fixes
---------------
brief-yoctoprojectqs, dev-manual: Update tag checkout examples
poky.ent: Updated release date to "January 2019"
build-appliance-image: Update to thud head revision
poky: Update version to 2.6.1
local.conf.sample: Update the sample config as per new migration manual
bitbake: bitbake-diffsigs: Support recursive deps with signature files
bitbake: bitbake-diffsigs: Merge with bitbake-dumpsig
poky.conf: Update the distros we test against on the autobuilder
bitbake: server/process: Show last 60 lines of the log if the server didn't start
bitbake: server/process: Show the last 60 log lines, not the last 10
bitbake: server/process: print a message when no logfile
bitbake: server/process: Make lockfile handling clearer
bitbake: fetch: don't use shell=True when listing ar files
bitbake: layerindex: don't use shell=True when cloning
linux-yocto: correct qemumips64el definition
linux-yocto: configuration updates (virtio and tpm)
populate_sdk_ext.bbclass: Include site.conf in parsing for contents for local.conf
createrepo-c: Fix setup of logging (log domains)
nss: Fix SHA_HTONL bug for arm 32be.
go 1.9/1.11: fix textrel qa warning for non mips arch
python3: drop redundant patch
python3: don't cripple target distutils
gdb: Remove long ago upstreamed patch
valgrind: Skip vgpreload_memcheck shared object from stripping
classes/icecc.bbclass: Fix ccache disable
patchreview: Various fixes/improvements
insane: Clarify GNU_HASH warning
linux-firmware: better packaging for TI wl12xx & wl18xx firmwares
linux-firmware: Bump revision to 1baa348
openssl: correct bad path on package preprocess
ruby: upgrade 2.5.1 -> 2.5.3
linux-yocto/4.18: update to v4.18.21
linux-yocto/4.18: update to v4.18.20
linux-yocto/4.14: update to v4.14.79
linux-yocto/4.18: update to v4.18.17
linux-yocto/4.18: bug fixes and configuration tweaks
linux-yocto/tiny: restore qemuarm support
linux-yocto/tiny: switch default branch to standard/tiny/base
linux-yocto/4.18: -rt sync and config cleanups
linux-yocto/4.14: configuration cleanups
linux-yocto: remove obselete options from lxc config
licence: Add license file CC-BY-SA-4.0
piglit: add missing waffle-bin dependency
binconfig: only try to mangles files
libc-package: fix postinst error when ENABLE_BINARY_LOCALE_GENERATION = "0"
python: Adds instructions to the manifest file
libtasn1: no need to inherit binconfig
image_types: use cpio-native to build cpio images
cpio: fix crash when appending to archives
meta-selftest/error: Cleanup large trailing whitespace
nspr: improve reproducibility
ghostscript: 9.25 -> 9.26
scripts/runqemu: Fix logic error causing failures with MACHINE from the environment
gst-validate: upgrade 1.14.2 -> 1.14.4
gstreamer1.0-python: upgrade 1.14.3 -> 1.14.4
gstreamer1.0-omx: upgrade 1.14.3 -> 1.14.4
gstreamer1.0-rtsp-server: upgrade 1.14.3 -> 1.14.4
gstreamer1.0-vaapi: upgrade 1.14.3 -> 1.14.4
gstreamer1.0-libav: upgrade 1.14.3 -> 1.14.4
gstreamer1.0-plugins-ugly: upgrade 1.14.3 -> 1.14.4
gstreamer1.0-plugins-bad: upgrade 1.14.3 -> 1.14.4
gstreamer1.0-plugins-good: upgrade 1.14.3 -> 1.14.4
gstreamer1.0-plugins-base: upgrade 1.14.3 -> 1.14.4
gstreamer1.0: upgrade 1.14.3 -> 1.14.4
gst-plugins-bad: add PACKAGECONFIG for msdk
gstreamer1.0-python: upgrade to version 1.14.3
gstreamer1.0-omx: upgrade to version 1.14.3
gstreamer1.0-vaapi: upgrade to version 1.14.3
gstreamer1.0-rtsp-server: upgrade to version 1.14.3
gstreamer1.0-libav: upgrade to version 1.14.3
gstreamer1.0-plugin-ugly: upgrade to version 1.14.3
gstreamer1.0-plugin-bad: upgrade to version 1.14.3
gstreamer1.0-plugin-good: upgrade to version 1.14.3
gstreamer1.0-plugin-base: upgrade to version 1.14.3
gstreamer1.0: upgrade to version 1.14.3
maintainers.inc: update Intel owners
devtool: fix target-deploy --strip
multilib_script: fix packages split
systemd: fix PN-container package splitting
archiver.bbclass: Fix COPYLEFT_LICENSE_{IN, EX}CLUDE
openssl: update to 1.1.1a
image.bbclass: fix a wrong position blank
mdadm: improve the run-ptest
meson: Correct use of the _append operator
meson: Disable rpath stripping at install time
meson: do not manipulate the environment when looking for python via pkg-config
ethtool: 4.17 -> 4.19
iproute2: 4.18.0 -> 4.19.0
sstate.bbclass: Only remove sstate file when task is existed
bugzilla.bbclass: Remove it since obsoleted
libgcrypt: upgrade 1.8.3 -> 1.8.4
gnupg: upgrade 2.2.10 -> 2.2.11
gnupg: upgrade 2.2.9 -> 2.2.10
gnutls: update to 3.6.4
elfutils: 0.174 -> 0.175
recipes: Remove tab indentations in python code
classes: Remove tab indentations in python code
ptest: Reproducibility: Take control of umask
reproducible: Don't look for youngest file when no source tarball
reproducible: Refactor: Break out fixed_source_date_epoch() function
boost-context: Reproducibility: Set .file section for all *_elf_gas.S files
opkg-utils: Fix update-alternatives link relocation
meta/icecc.bbclass: Update system blacklists
meta/icecc.bbclass: Move system blacklist to variables
socat: fix LICENSE
bitbake: siggen: Adapt colors used by bitbake-diffsigs to support light themes
Documentation: Prepare for 2.6.1 release.
ref-manual: Document the fifth argument to PACKAGECONFIG
ref-manual: Add missing whitespace around "=" in a few code examples.
poky.ent: Updated copyright variable to span into 2019.
ref-manual: Updates to CMake and cmake.bbclass.
ref-manual: Updated list of supported Linux Distros:
dev-manual: Added note stating no WSL support
ref-manual: Added a note saying WSL is not supported.
brief-yoctoprojectqs: Added warnings about WSL, which can't be used.
kernel-dev: Updated phrasing for what a "defconfig" file is.
ref-manual: Updated image_types.bbclass description.
ref-manual: Added description for devupstream.bbclass
dev-manual: Updated the "Post-Installation Scripts" section.
ref-manual: Added cross-references to "Post-Installation Scripts"
ref-manual: Updated "Packaging Changes" section for 2.6 migration.
ref-manual: Applied review edits to the 2.6 migration section.
ref-manual: New 2.6 Migration section complete.
ref-manual: Added new python3 profile-optimization migration topic
ref-manual: Updated postinstall migration note.
ref-manual: Updates to the 2.6 migration section.
ref-manual: Added KERNEL_ARTIFACT_NAME and adjusted referencing variables.
ref-manual: Removed the NOISO and NOHDD references.
dev-manual: Removed occurrence of mkefidisk.sh script.
ref-manual: Removed the NOISO and NOHDD variables.
ref-manual: Added several new sections to the 2.6 migration section.
ref-manual: Added new artifact naming variables to glossary.
ref-manual: Changed "post 2.6" to correct wording.
ref-manual: Added KERNEL_IMAGE_NAME description
ref-manual: Updated migration section for 2.6
ref-manual: Updated 2.6 migration topic "_remove"
ref-manual: Added the 2.6 Migration Section.
ref-manual: Updated testimage and testsdk class descriptions.
ref-manual, dev-manual: Removed TEST_IMAGE for TESTIMAGE_AUTO.
poky.ent: Updated release month to November 2018 (thud)
oeqa/selftest/esdk: Fix typo causing test failure
oeqa/selftest/esdk: Ensure parent directory exists
testimage/testsdk/selftest: Avoid platform.distro_identifier deprecation warnings
oeqa/concurrencytest: Avoid unclosed file warnings
oeqa/utils/qemurunner.py: Fix python regex warnings
oeqa/selftest/context: Replace deprecated imp module usage
oeqa/utils/commands: Avoid unclosed file warnings
oeqa/core/runner: Correctly markup regexs
oeqa/loader: Fix deprecation warning
oeqa/runner: Sort the test result output by result class
oeqa/runner: Always show a summary of success/fail/error/skip counts
oeqa/selftest/esdk: run selftest inside workdir not /tmp
oeqa: don't litter /tmp with temporary directories
oeqa/utils/qemurunner: Avoid tracebacks on closed files
oeqa/selftest/runqemu: Improve testcase failure handling
lib/oe/utils: Improve multiprocess_lauch exception handling
oeqa/oelib/path: don't leak temporary directories
oeqa/selftest/context: Improve log file handling
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
bitbake: bitbake-user-manual: Added "usehead" parameter.
bitbake: main: Don't use print() directly, use logger
bitbake: process: Flush key output to logs
bitbake: fetch2/svn: Fix SVN repository concurrent update race
bitbake: runqueue: Ensure disk monitor is started when no setscene tasks are run
bitbake: server/process: Fix ConnectionRefusedError tracebacks
bitbake: fetch2: Avoid warning about incorrect character escaping in regex
gstreamer1.0-vaapi: downgrade vaapisink to marginal rank
bitbake: tests/fetch: Update after recent gitsm message changes
bitbake: cooker: Fix multiconfig dependencies
bitbake: fetch/git: fix AttributeError in shallow extraction logic
sanity: Add check for WSL
oeqa/utils/httpserver: Rework to avoid hangs and improve logging
openssl-1.1.1: remove build path from version info
busybox: make busybox.links.{suid, nosuid} reproducible
shadow: improve reproducibility by hard-coding shell path
oeqa/selftest/recipetool: Fix problems from changing upstream source
image-buildinfo,oeqa/selftest/containerimage: Ensure image-buildinfo doesn't break tests
valgrind: drop mips n32 support
oeqa/selftest: Standardize json logging output directory
glibc: make ld-2.28.so reproducible on arm
base.bbclass: avoid 'find -ignore_readdir_race -delete'
bitbake: server/process: Fix unclosed socket warnings upon server connection refused
bitbake: siggen: Correct format argument substitution
bitbake: fetch: Also export GIT_SSH environment variable
bitbake: bitbake: toaster: allow OE_ROOT to be provided through environment
bitbake: fetch2/gitsm.py: Fix the references when the module and path are different
bitbake: fetch2/gitsm.py: Disable branch checking on submodules
perf: Disable libunwind for ARC & RISCV64
apt: update SRC_URI
archiver: Drop unwanted directories
scripts/autobuilder-worker-prereq-tests: adjust max_user_watches
meta: Use double colon for chown OWNER:GROUP
wic: use explicit errno import
oeqa/selftest: Add test for Yocto source mirror functionality/completeness
libgpg-error: Support build for native on ppc64/ppc64le hosts
v86d: Make cross compilation working on more architectures
oe-init-buildenv/base: Relax python version checks in favour of HOSTTOOLS manipulation
oeqa/runtime/ptest: Inject results+logs into stored json results file
crosssdk: Remove usage of host flags for cross-compilation
go: Change from TARGET_ARCH to TUNE_PKGARCH
go-dep: disable PTEST_ENABLED for mips and mips64
python3: add python3-venv to the python3-modules RDEPENDS
python3: Fix python3-pyvenv run-time dependency
gdbm: fix ptest failure
pixman: Trim license info extracted from pixman-matrix.c
libgpg-error: Trim license info extracted from init.c & gpg-error.h.in
apr-util: Trim license info extracted from apu_version.h
apr: Trim license info extracted from apr_lib.h
common-licenses: Correct the FreeType license text
reproducible_build: update do_deploy_source_date_epoch commment
elfutils: 0.173 -> 0.174
tzdata: update to 2018g
tzcode-native: update to 2018g
bitbake: bitbake-user-manual: Added hard-spacing to "_remove" example.

