Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04609E00A4F; Thu, 15 Nov 2018 16:40:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF232E0095C;
	Thu, 15 Nov 2018 16:40:05 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Nov 2018 16:40:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,238,1539673200"; d="scan'208";a="100674363"
Received: from bbraatzx-mobl.amr.corp.intel.com ([10.254.177.8])
	by orsmga003.jf.intel.com with ESMTP; 15 Nov 2018 16:40:03 -0800
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <2a4949c2-4fcb-de37-7eb2-f0210c5a6acf@intel.com>
Date: Thu, 15 Nov 2018 16:40:03 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Yocto Project 2.6 (thud 20.0.0) Released
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
X-List-Received-Date: Fri, 16 Nov 2018 00:40:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

We are pleased to announce the latest release of the Yocto Project 2.6 (thud-20.0.0) is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.6/poky-thud-20.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6/poky-thud-20.0.0.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.6/RELEASENOTES

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1

Thank you for everyone's contributions to this release.

Sincerely,

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com

-------------------
yocto-2.6 Errata
-------------------
Release Name: bitbake-thud-20.0.0
Branch: 1.40.0
Tag: 1.40.0
Hash: 0cfc71d1a342b82781b0ba547421e41f6340902a
md5: 0076740c69f41349c7799c874172391e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6/bitbake-thud-20.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6/bitbake-thud-20.0.0.tar.bz2

Release Name: eclipse-poky-neon-thud-20.0.0
Branch: thud
Tag: 2018-10
Hash: 303e46a6848f1937d12541a7fd58e61aa1361225
md5: f8ac98038e49fa22be3889291a137d2d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6/eclipse-poky-neon-thud-20.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6/eclipse-poky-neon-thud-20.0.0.tar.bz2

Release Name: eclipse-poky-oxygen-thud-20.0.0
Branch: thud
Tag: 2018-10
Hash: f1a20dc6a5a252a4ed4484b618d579cbbc7d146e
md5: 61fd3f89fc5b7bb21a0adb42939f7787
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6/eclipse-poky-oxygen-thud-20.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6/eclipse-poky-oxygen-thud-20.0.0.tar.bz2

Release Name: meta-gplv2-thud-20.0.0
Branch: thud
Tag: thud-20.0.0
Hash: 379ea8dd144b06aeb459e9a82c792c84d8a5baf7
md5: 8eb5e25e99245fcd135f6089011d6b3d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6/meta-gplv2-thud-20.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6/meta-gplv2-thud-20.0.0.tar.bz2

Release Name: meta-intel-thud-20.0.0
Branch: thud
Tag: thud-20.0.0
Hash: 847dcbb866bb48c3a051967dd0b46b452aa9d5c4
md5: ae67136bccf0a9799c51714e5fa8ee31
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6/meta-intel-thud-20.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6/meta-intel-thud-20.0.0.tar.bz2

Release Name: meta-mingw-thud-20.0.0
Branch: thud
Tag: thud-20.0.0
Hash: 8ddd31f2dfe506e45f22a6dd67f997045a34804e
md5: 2f32bb5cccee1bd3da40bb6b4e330cd9
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6/meta-mingw-thud-20.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6/meta-mingw-thud-20.0.0.tar.bz2

Release Name: meta-qt3-thud-20.0.0
Branch: thud
Tag: thud-20.0.0
Hash: 02f273cba6c25f5cf20cb66d8a417a83772c3179
md5: 7b73bf1132428ea898938b03815cad21
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6/meta-qt3-thud-20.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6/meta-qt3-thud-20.0.0.tar.bz2

Release Name: meta-qt4-thud-20.0.0
Branch: thud
Tag: thud-20.0.0
Hash: 8e791c40140460825956430ba86b6266fdec0a93
md5: 54d50515ac648ccfb8dba421705716e5
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6/meta-qt4-thud-20.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6/meta-qt4-thud-20.0.0.tar.bz2

Release Name: oecore-thud-20.0.0
Branch: thud
Tag: thud-20.0.0
Hash: 1fd7d0f2fbf7e200844c675ddb77513a8d5d7327
md5: 8fd9580cc86bc3231da4647c6bba5231
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6/oecore-thud-20.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6/oecore-thud-20.0.0.tar.bz2

Release Name: poky-thud-20.0.0
Branch: thud
Tag: thud-20.0.0
Hash: 84eecb017ef92ef36b4df730908828e54aeff85c
md5: 0bde045803827b62e53ccc07c7b5b6ad
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.6/poky-thud-20.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-2.6/poky-thud-20.0.0.tar.bz2


-----------------------------
New Features / Enhancements
-----------------------------
* Linux kernel 4.18/4.14, gcc 8.2, glibc 2.28 and ~245 other recipe upgrades
* Enabled security flags+pie by default in poky distribution
* python3: enabled profile-guided optimization for improved runtime performance
* Added support for building newlib as the system C library
* Specific architecture support:
 - Support Synopsys DesignWare ARC architecture (glibc support currently requires meta-synopsys)
 - grub-efi: add grub target and image for aarch64
 - Added support for aarch64 hosts in uninative and MACHINE_SDK
 - sysprof: enabled for aarch64
 - linux-yocto: added qemuarm64 preempt-rt BSP definition
 - Added RISC-V support for qemu, nspr, liburcu, meson, and support enhancements in various other parts of the build system
 - Added LatticeMico32 architecture site info
 - Added m68k architecture definitions
 - Added mcf5441x cpu type tuning
 - Added tune-mips-74k.inc tune file for 74kc mips
 - insane.bbclass: Added powerpc to elf headers machine dictionary
 - qemux86*: Add U-Boot machine configuration
 - binutils: enable x86_64-pep for producing EFI binaries on x86-64
 - linux-yocto-rt: added paravirt_kvm support for qemux86-64
 - mesa: enabled virgl driver for qemux86/qemux86-64
 - xf86-video-intel: disabled DRI 1, enabled DRI 3
* Kernel-related improvements:
 - kernel-devsrc: add selinux include files needed by scripts/selinux build
 - linux-yocto/standard: enable bpf configs in standard kernel
 - devtool-source.bbclass: Support kernel-fragments/patch not in SRC_URI
 - kern-tools: improve kernel config audit output
 - linux-yocto: add selftest and security configuration blocks
 - linux-yocto: add kernel sample configuration fragment
 - kernel-devsrc: restructured for out of tree (and on target) module builds
 - kernel: Set SOURCE_DATE_EPOCH to kernel git timestamp if not set
 - recipes-kernel/linux: Enable NUMA Kconfig from MACHINE_FEATURES
 - kernel-fitimage: Allow setting of DTB/DTBO relocation address
 - kernel-fitimage: Add DTBO support for configurations
 - kernel-fitimage: Make DTB key insertion optional
 - kernel-fitimage: add support for ext2.gz initramfs files
 - kernel-devicetree.bbclass: Fix and simplify installation of DTB files
 - kernel.bbclass: move variables for kernel artifacts names to separate kebbclass
 - Improved consistency of path variables for kernel/image artifacts
 - linux-yocto: add qemuarm -tiny support
 - kernel.bbclass: use weak assignment to allow custom KERNEL_IMAGEDEST
* New recipes: dos2unix, fribidi, libgloss, libidn2, libnss-nis, libssp-nonshared, newlib, python3-extras, python3-pbr, python3-subunit, python3-testtools, rpcsvc-proto
* Enabled building mpg123, lame and related components out of the box as they are now deemed acceptable in other distributions (e.g. Fedora)
* Added devicetree class for user/BSP device tree source compilation
* Added dos2unix class (from meta-oe) to support CR->LF conversion on sources after unpack
* Added multilib_script class to set up alternatives for scripts with multilib
* SDK-related changes:
 - Added aarch64 SDKMACHINE support
 - Added flex to standard SDK host packages
 - Use SDK environment when running post-relocate-setup.d items
 - Show an error if a post-relocate-setup.d item fails
 - Allow any executable in post-relocate-setup.d, not just *.sh
 - Added TARGET_ARCH and TARGET_OS to SDK environment
 - Added variables to allow toolchain-shar-relocate.sh/toolchain-shar-extract.sh template files to be overridden
 - SDK_TITLE/SDKEXTPATH now set with ??= so they can be more easily overridden centrally
 - Added SDK_LAYERS_EXCLUDE_PATTERN variable to allow excluding layers from eSDK
 - runqemu-extract-sdk: allow installing debugfs on rootfs
 - runqemu-extract-sdk: support tar.xz format
 - Added cmake-native meta-ide-support
 - Added nativesdk support to createrepo-c, desktop-file-utils, libaio, libdrm, libnewt, libnewt-python, libsdl2, meson, openssh, slang, unzip, update-rc.d
* Packaging improvements:
 - Optimized and refactored packaging logic for improved performance
 - Implemented PACKAGE_EXCLUDE for opkg
 - run-postinsts: for dpkg/opkg, do not rely on /etc/*-postinsts
 - Use filtered copies of the deploy ipk/deb package directories for better determinism
 - postinstall scripts must now be explicit about deferring to the target - script failure is now treated as a failure instead of deferring
 - package_manager.py: reworked postinst_intercept failures
 - oe.package_manager: support loading intercepts from multiple paths
 - Added EXCLUDE_PACKAGES_FROM_SHLIBS variable to allow excluding individual packages as shlib providers
* wic improvements:
 - bootimg-partition: Add support to create the u-boot boot config file
 - bootimg-partition: Add support to specify a custom extlinux.conf
 - Add beaglebone u-boot boot config file for the wic image
 - Support changing the imager
 - Introduce the --use-label partition parameter
* Misc script improvements
 - devtool: added clean option to 'devtool build' subcommand
 - recipetool: added 'edit' subcommand
 - oe-depends-dot: print dependency chains for '--why' option
 - oe-pkgdata-util: add option for lookup-recipe to not fatally fail
* BitBake improvements:
 - Added support for multiconfig dependencies
 - Added initial implementation of per task process limits
 - Added explicit verbnote log level for informational messages that should be printed to the console
 - _remove operator now preserves whitespace to avoid unnecessary task signature changes
 - taskexp: added focused search bar
 - fetch2/gitsm.py: Reworked the git submodule fetcher
 - fetch2/git: made errors about missing sources more informative
 - bitbake-layers: do not parse all recipes when calling add-layer
 - Introduced a library for accessing OE layer index information and changed bitbake-layers and the Toaster UI to use it
* Toaster Web UI improvements:
 - Enabled existing project import and merged Toaster settings
 - Support project-specific configuration for external tools
 - Show layer clone item in progress bar
* PACKAGECONFIG enhancements in at, curl, curl, gdb, glib, gptfdisk, gstreamer1.0* , libdrm, openssl, p11-kit, perf, python3, qemu, sudo, trace-cmd, and others
* Added native build support to libdrm, libsdl2
* desktop-file-utils: allow target/nativesdk build, not just native
* glibc's ldconfig will now check /etc/ld.so.conf.d/*.conf by default
* Separate XOrg *proto recipes now merged into one xorgproto recipe in line with upstream
* qemu: use sdl2 instead of sdl1
* rpcbind: add -p option to specify fixed port number
* uboot-extlinux-config.bbclass: Add baudrate in console bootparam
* rootfs-postcommands: split ssh_allow_empty_password
* initramfs-framework: add nfsrootfs module
* linux-firmware: package rtl8168, new brcm*, Marvel usb 8997 firmware separately
* dbus: Enable user-session PACKAGECONFIG by default
* curl: enabled libidn by default
* iptables: Split the iptables modules into separate packages
* multiconfig: Enable multiconfig dependencies on oe-core
* gcc: enabled build-id in gcc-cross-initial
* python[3]native: allow use of both native Python 2 and 3
* Added shared state usage summary to the build output
* sstate: Ensure a given machine only removes things which it created
* sstate: allow specifying indirect dependencies to exclude from sysroot
* sstate: Use pigz for parallel compression if available
* insane: Recognise BPF as a valid EM_MACHINE type
* Added systemd services to kexec-tools, lttng-tools
* logrotate: Improved configurability of the installed systemd service files
* systemd configuration now split out to systemd-conf
* systemd: allow setting time-epoch to epoch
* mesa: enable surfaceless platform
* boost: enable the contract library by default
* meson: handle exe wrappers
* oeqa/manual: transfer manual test cases from testopia to oeqa
* oeqa/core/runner: refactor for OEQA to write json test results file
* mtd-utils: add mtd-utils-tests package
* ltp: build open posix test suite
* linux-yocto configuration audit issues now correctly reported
* Added ptest support in gstreamer-1.0, libusb, python3
* distutils/distutils3 classes now prevent fetching Python dependencies during do_configure
* distutils/distutils3 classes now have improved error messages
* libsolv: make building with rpm optional via PACKAGECONFIG
* qemux86-directdisk: remove mem= parameter
* rootfs: possibility to add packages to debug rootfs
* Added oe.utils.vartrue() function
* qemuwrapper-cross: enable multilib and nativesdk variants of the script
* util-linux: Enabled unshare utility
* Use overlayfs in volatile-binds and initramfs read-only-rootfs-hook if available to avoid copying to tmpfs
* Various enhancements to the alternatives setup to allow busybox and other command providers to coexist
* musl: added aliases for glibc provided libraries (a step towards running prebuilt applications for glibc on musl)
* Allow busybox-syslog dependency to be disabled via VIRTUAL-RUNTIME_base-utils-syslog
* no-static-libs.inc: use `?=' to set a default DISABLE_STATIC
* security_flags.inc: use `?=' to set a default var-lcl_maybe_fortify
* meta-yocto-bsp: mpc8315e-rdb: Change kernel provider assignment to a weaker one
* qemu.inc: Change kernel provider assignment to a weaker one
* default-versions.inc: use weak assignments to allow overwrite
* sstate.bbclass: allow SSTATE_PRUNE_OBSOLETEWORKDIR to be overwritten
* npm.bbclass: allow overriding NPM_INSTALL_DEV
* Replaced yasm usage with nasm
* packagegroup-core-lsb/-full-cmdline: added bzip2
* oe-buildperf-report: highlight large changes in the HTML report
* Added EPL-2.0 license file

-----------------
 Known Issues
-----------------

Please note that the 2.6 Thud release does not contain the current HEAD/tip of the Thud branch. 

The following security fixes are not included in this release, but are currently on the master-next branch and in the process of being pulled into thud branch.

* binutils: fix CVE-2018-18309, CVE-2018-18605, CVE-2018-18606, CVE-2018-18607
* curl: CVE-2018-16839, CVE-2018-16840, CVE-2018-16842
* openssl: CVE-2018-0734, CVE-2018-0735
* ghostscript: CVE-2018-17961, CVE-2018-18073, CVE-2018-18284
* elfutils: fix CVE-2018-18520 & CVE-2018-18521 & CVE-2018-18310
* nasm: fix CVE-2018-1000667
* unzip: fix for CVE-2018-18384
* qemu: fix for CVE-2018-10839
* systemd: fix CVE-2018-15686, CVE-2018-15687, CVE-2018-15688
* nss: update to 3.39 includes CVE-2018-12384
* xserver-xorg: fix CVE-2018-14665

- gitsm fixes on master-next:
 * The submodule name and path were assumed to be the same, which is not necessarily true.
 * Submodules refer to a specific commit, not branch, but we erroneously check against the branch specified in SRC_URI. This results in
failure if a submodule commit is not on that branch.

- Bug 12984 - Specifying invalid PRSERV_HOST causes BitBake to hang.
The call to bb.fatal() in the exception processing hangs. Any attempt to terminate the program, like exit(), fails.

- Bug 12985 - multiconfig in v2.6 no longer works with COMPATIBLE_MACHINE (e.g. in image recipes)
The multiconfig name is split from the target to be built, and then we check for PROVIDERS for that target for all the available multiconfigs, regardless of whether it needs to be build that target for that multiconfig.
We should only check for PROVIDERS either when we are building for that target or when there is a multiconfig dependency to it.

Please see the respective bugs for additional details.


----------------------
Migration instructions
----------------------

For details on changes that you might need to make when migrating to the Yocto Project 2.6
release from previous releases, please see the following manual section:

http://www.yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#moving-to-the-yocto-project-2.6-release


--------------
Security Fixes
--------------
* bind: CVE-2018-5740, CVE-2018-5738
* binutils: CVE-2018-17358, CVE-2018-17359, CVE-2018-17360
* blktrace: CVE-2018-10689
* cpio: CVE-2016-2037
* curl: CVE-2018-14618
* dhcp: CVE-2018-5733, CVE-2018-5732
* dropbear: CVE-2018-15599
* elfutils: CVE-2018-16062, CVE-2018-16403, CVE-2018-16402
* ffmpeg: CVE-2018-15822
* file: CVE-2018-10360
* flac: CVE-2017-6888
* ghostscript: CVE-2018-10194, CVE-2018-15908, CVE-2018-15909, CVE-2018-15910, CVE-2018-15911
* git: CVE-2018-17456
* glibc: CVE-2017-18269, CVE-2018-11236, CVE-2018-11237
* libarchive: CVE-2017-14501, CVE-2017-14503
* libcgroup: CVE-2018-14348
* libcroco: CVE-2017-7960
* libexif: CVE-2017-7544
* libice: CVE-2017-2626
* libid3tag: CVE-2004-2779
* libsndfile1: CVE-2017-14245 CVE-2017-14246, CVE-2017-14634, CVE-2018-13139
* libsoup: CVE-2018-12910
* libtiff: CVE-2017-17095
* libvorbis: CVE-2017-14160, CVE-2018-10393 / CVE-2018-14160, CVE-2018-10392
* libxml2: CVE-2017-8872, CVE-2018-14404, CVE-2018-9251, CVE-2018-14567, CVE-2017-8872
* lrzsz: fix CVE-2018-10195
* ltp: CVE-2017-5669
* nasm: CVE-2018-10016, CVE-2018-8883, CVE-2018-8882, CVE-2018-10316
* nss: CVE-2018-0495
* patch: CVE-2018-6952
* perl: CVE-2018-12015, CVE-2017-12837, CVE-2018-6797, CVE-2018-6798, CVE-2018-6913
* python: CVE-2018-1000802, CVE-2018-14647
* qemu: CVE-2018-11806, CVE-2018-17958, CVE-2018-17962, CVE-2018-17963, CVE-2017-16845, CVE-2018-15746
* ruby: CVE-2018-1000073
* shadow: CVE-2017-2616
* squashfs-tools: CVE-2015-4645, CVE-2015-4646
* taglib: CVE-2018-11439
* tiff: CVE-2018-10963, CVE-2018-7456, CVE-2018-8905
* u-boot: CVE-2018-1000205
* unzip: CVE-2018-1000035
* util-linux: CVE-2018-7738
* webkit: CVE-2018-12911, CVE-2017-17821
* wpa-supplicant: CVE-2018-14526

---------------
Recipe Upgrades
---------------
* acpica: Upgrade to 20180508 release
* acpid: upgrade to 2.0.30
* adwaita-icon-theme: upgrade to version 3.28.0
* alsa-lib: Upgrade to 1.1.6
* alsa-plugins: 1.1.5 -> 1.1.6
* alsa-tools: Update to 1.1.6
* alsa-utils: 1.1.5 -> 1.1.6
* atk: upgrade to version 2.28.1
* at-spi2-atk: upgrade to version 2.26.2
* at-spi2-core: upgrade to version 2.28.0
* autoconf-archive: update to version to 2018.03.13
* automake: 1.15.1 -> 1.16.1
* babeltrace: update to 1.5.6
* bash: 4.4.12 -> 4.4.23
* bash-completion: update to 2.8
* bc: upgrade to 1.07.1
* bind: update to 9.11.4
* binutils: Update past 2.31.1 release
* bluez5: upgrade to 5.50
* boost: update to 1.68.0
* bootchart2: Update to master-tip
* btrfs-tools: update to 4.17.1
* busybox: update to 1.29.2
* ca-certificates: update to 20180409
* cantarell-fonts: update to 0.0.25
* ccache: 3.3.5 -> 3.4.2
* clutter-gst-3.0: upgrade 3.0.24 -> 3.0.26
* cmake: Update 3.10.3 -> 3.12.2
* coreutils: upgrade 8.29 -> 8.30
* createrepo-c: upgrade 0.10.0 -> 0.11.0
* cronie: upgrade to 1.5.2
* cups: upgrade 2.2.6 -> 2.2.8
* curl: update to 7.61.0
* dbus-glib: upgrade to 0.110
* dbus-test: upgrade to 1.12.10
* dbus: upgrade to 1.12.10
* debianutils: update to 4.8.6
* dhcp: update to 4.4.1
* diffstat: 1.61 -> 1.62
* distcc: update to 3.3.2
* dropbear: update to 2018.76
* dtc: update to 1.4.7
* e2fsprogs: 1.43.8 -> 1.44.3
* elfutils: 0.170 -> 0.173
* epiphany: update to 3.28.3.1
* ethtool: update 4.13 -> 4.17
* expat: upgrade 2.2.5 -> 2.2.6
* ffmpeg: Upgrade to 4.0.2
* file: Update to 5.34
* freetype: Upgrade 2.9 -> 2.9.1
* gawk: upgrade to 4.2.1
* gcc-8: Upgrade to 8.2 release
* gcr: upgrade 3.20.0 -> 3.28.0
* gdbm: update to 1.18
* gdb: Update to 8.2
* ghostscript: 9.21 -> 9.25
* git: 2.16.1 -> 2.18.1
* glib-2.0: update to 2.56.1
* glibc: Upgrade to 2.28
* glib: update to 2.58.0
* glide: Minor update to 0.13.2
* gnome-desktop3: update to 3.28.1
* gnu-config: update to 2018-07-13
* gnu-efi: update to 3.0.8
* gnupg: upgrade 2.2.4 -> 2.2.9
* gnutls: Update to 3.6.3
* gobject-introspection: update to 1.58.0
* go-dep: Update 0.4.1 -> 0.5.0
* go: Update 1.9.4 -> 1.11.1
* gpgme: 1.10.0 -> 1.11.1
* gptfdisk: update to 1.0.4
* gsettings-desktop-schemas: update to 3.28.0
* gstreamer1.0-libav: upgrade 1.12.4 -> 1.14.2
* gstreamer1.0-omx: upgrade 1.12.4 -> 1.14.2
* gstreamer1.0-plugins-bad: 1.12.4 -> 1.14.2
* gstreamer1.0-plugins-base: upgrade 1.12.4 -> 1.14.2
* gstreamer1.0-plugins-good: upgrade 1.12.4 -> 1.14.2
* gstreamer1.0-plugins-ugly: upgrade 1.12.4 -> 1.14.2
* gstreamer1.0-python: upgrade 1.12.4 -> 1.14.2
* gstreamer1.0-rtsp-server: upgrade 1.12.4 -> 1.14.2
* gstreamer1.0: upgrade 1.12.4 -> 1.14.2
* gstreamer1.0-vaapi: upgrade 1.12.4 -> 1.14.2
* gst-validate: upgrade 1.12.4 -> 1.14.2
* gtk+3: upgrade to 3.22.30
* gtk-doc: update to 1.29
* gtk-icon-utils-native: upgrade to 3.22.30
* harfbuzz: upgrade 1.7.5 -> 1.8.8
* hdparm: upgrade 9.53 -> 9.56
* help2man-native: 1.47.5 -> 1.47.6
* icu: update to 62.1
* iproute2: update 4.14.1 -> 4.18.0
* iputils: upgrade to s20190629
* iso-codes: update to 4.1
* json-c: upgrade to 0.13.1
* kexec-tools: upgrade 2.0.16 -> 2.0.17
* kmscube: Update to master from 2018-06-17
* less: update to 530
* libaio: update to 0.3.111
* libarchive: Update 3.3.2 -> 3.3.3
* libatomic-ops: upgrade to version 7.6.6
* libbsd: update to 0.9.1
* libcap-ng: update to 0.7.9
* libdmx: upgrade 1.1.3 -> 1.1.4
* libdrm: upgrade 2.4.91 -> 2.4.94
* libepoxy: upgrade 1.5.0 -> 1.5.2
* liberror-perl: upgrade 0.17025 -> 0.17026
* libevdev: upgrade to version 1.5.9
* libfm: update to 1.3.0.2
* libgcrypt: 1.8.2 -> 1.8.3
* libgpg-error: 1.27 -> 1.32
* libidn: update to 1.35
* libinput: upgrade to 1.11.3
* libjpeg-turbo: Upgrade 1.5.3 -> 2.0.0
* libnsl: Upgrade to tip beyond 1.2.0 release
* libpcre2: update to 10.31
* libpcre: 8.41 -> 8.42
* libpng: upgrade 1.6.34 -> 1.6.35
* libsecret: update to 0.18.6
* libshmfence: update to 1.3
* libsolv: update to 0.6.35
* libsoup-2.4: upgrade to 2.62.3
* libtirpc: Upgrade to 1.0.4-tc1
* libunistring: upgrade to 0.9.10
* liburi-perl: upgrade 1.73 -> 1.74
* libusb1: upgrade to version 1.0.22
* libva: upgrade 2.1.0 -> 2.2.0
* libva-utils: upgrade 2.1.0 -> 2.2.0
* libvorbis: 1.3.5 -> 1.3.6
* libwebp: update to 1.0.0
* libx11: Upgrade 1.6.5 ->1.6.6
* libxcb: update to 1.13
* libxcrypt: Upgrade to 4.1.1
* libxinerama: update to 1.1.4
* libxkbcommon: Upgrade to 0.8.2
* libxml2: 2.9.7 -> 2.9.8
* libxml-sax-perl: upgrade 0.99 -> 1.00
* libxml-simple-perl: upgrade 2.24 -> 2.25
* libxscrnsaver: update to 1.2.3
* libxxf86misc: update to 1.0.4
* libyaml: upgrade to 0.2.1
* lighttpd: upgrade 1.4.48 -> 1.4.50
* linux-firmware: Bump revision to 44d4fca
* linux-libc-headers: update to 4.18
* linux-yocto/4.14: update to v4.14.76
* linux-yocto-dev: update PV to v4.19
* linux-yocto: introduce 4.18 recipes (v4.18.14)
* linux-yocto-rt/4.18: update to -rt5
* llvm: Update to 6.0.1
* logrotate: update to 3.14.0
* lsof: upgrade 4.89 -> 4.91
* ltp: bump to release 20180515
* lttng-modules: upgrade 2.10.5 -> 2.10.6
* lttng: uprev to 2.10.7
* lz4: upgrade 1.7.4 -> 1.8.2
* lzip: upgrade 1.19 -> 1.20
* man-db: upgrade 2.8.1 -> 2.8.3
* man-pages: 4.14 -> 4.16
* matchbox-terminal: Upgrade to 0.2
* mc: upgrade to 4.8.21
* mesa: Upgrade 17.3.8 -> 18.1.9
* meson: update to 0.47.2
* mkfontscale: update to 1.1.3
* mpfr: Upgrade to 4.0.1
* mtd-utils: upgrade 2.0.1 -> 2.0.2
* musl: update past 1.20 release
* ncurses: 6.0+20171125 -> 6.1+20180630
* nfs-utils: 2.1.1 -> 2.3.1
* npth: 1.5 -> 1.6
* nss: update to 3.38
* ofono: upgrade to version 1.24
* openssh: upgrade 7.6p1 -> 7.8p1+git
* openssl: update 1.0.2o -> 1.0.2p
* openssl: update 1.1.0h -> 1.1.1
* p11-kit: Upgrade from 0.22.1 -> 0.23.14
* pango: upgrade
* pciutils: upgrade 3.5.6 -> 3.6.2
* pcmanfm: update to 1.3.0
* perl: update to 5.24.4
* piglit: Upgrade to version from 2018-08-13
* pkgconf: upgrade 1.4.2 -> 1.5.3
* prelink: Update to the latest version of prelink
* procps: update to 3.3.15
* pseudo: update to latest HEAD
* psmisc: 23.0 -> 23.1
* pulseaudio: 11.1 -> 12.2
* puzzles: upgrade to latest commit
* python3-dbus: update to latest stable version of 1.2.8
* python3-gitdb: update to version 2.0.4
* python3-git: update to version 2.1.11
* python3: update to 3.5.6
* python3-pip: update to version 18.0
* python3-pygobject: update to 3.28.3
* python-numpy: update to 1.14.5
* python-pbr: 3.1.1 -> 4.2.0
* python*-setuptools: update to 40.0.0
* python: update to version 2.7.15
* qemu: upgrade to 3.0
* re2c: Update to 1.0.1
* ptest-runner: Upgrade to 2.2
* rpcsvc-proto: Update to 1.4
* rpm: update to 4.14.2
* ruby: upgrade to version 2.5.1
* shadow: upgrade 4.2.1 -> 4.6
* shared-mime-info: upgrade 1.9 -> 1.10
* sqlite3: upgrade to version 3.23.1
* strace: Upgrade to 4.24
* subversion: 1.9.7 -> 1.10.0
* sudo: upgrade to 1.8.23
* sysprof: update to 3.30.0
* sysstat: upgrade to 11.7.4
* systemd-boot: upgrade to 239
* systemd: upgrade to 239
* systemtap: 3.2 -> 4.0
* tcf-agent: upgrade to 1.7.0
* time: 1.8 -> 1.9
* tzcode-native: update to 2018f
* tzdata: update to 2018f
* u-boot: Upgrade to 2018.07 release
* usbutils: upgrade to 010
* util-linux: update to 2.32.1
* util-macros: update to 1.19.2
* vala: update to 0.42.8
* valgrind: update from 3.13.0 to 3.14.0
* vte: upgrade to 0.52.2
* vulkan-demos: upgrade to latest commit
* vulkan: upgrade to version 1.1.73.0
* wayland-protocols: upgrade 1.13 -> 1.16
* wayland: upgrade to 1.16.0
* webkitgtk: update to 2.20.5
* weston: upgrade to 5.0.0
* wget: upgrade 1.19.4 -> 1.19.5
* xcb-proto: update to 1.13
* xdg-utils: upgrade to 1.1.3
* xeyes: update to 1.1.2
* xf86-input-evdev: update 2.10.6
* xf86-input-libinput: upgrade 0.26.0 -> 0.28.0
* xf86-input-mouse: update to 1.9.3
* xf86-video-fbdev: update to 0.5.0
* xf86-video-vesa: update to 2.4.0
* xf86-video-vmware: update to 13.3.0
* xinit: update to 1.4.0
* xkbcomp: update to 1.4.2
* xkeyboard-config: update to 2.24
* xprop: update to 1.2.3
* xserver-xorg: upgrade 1.19.6 -> 1.20.1
* xset: update to 1.2.4
* xwininfo: update to 1.1.4
* xz: upgrade 5.2.3 -> 5.2.4

