Received: from linuxplesk15.openhost.net.nz (linuxplesk15.openhost.net.nz [112.109.81.172])
 by mx.groups.io with SMTP id smtpd.web10.25687.1586989556192699384
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Apr 2020 15:25:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: bluelightning.org, ip: 112.109.81.172, mailfrom: bluelightning@bluelightning.org)
Received: from linc.localnet (unknown [165.84.15.3])
	by linuxplesk15.openhost.net.nz (Postfix) with ESMTPSA id 8D16BA12D7;
	Thu, 16 Apr 2020 10:25:51 +1200 (NZST)
Authentication-Results: linuxplesk15.openhost.net.nz;
        spf=pass (sender IP is 165.84.15.3) smtp.mailfrom=bluelightning@bluelightning.org smtp.helo=linc.localnet
Received-SPF: pass (linuxplesk15.openhost.net.nz: connection is authenticated)
From: "Paul Eggleton" <bluelightning@bluelightning.org>
To: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, "Jain, Sangeeta" <sangeeta.jain@intel.com>, "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv" <apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1.rc2)
Date: Thu, 16 Apr 2020 10:25:51 +1200
Message-ID: <8722103.eVOfdP6EDU@linc>
In-Reply-To: <SN6PR11MB279783ED5D18450811B1189988DA0@SN6PR11MB2797.namprd11.prod.outlook.com>
References: <20200408040108.BA881414AB8@localhost> <c64c8afa26ab7f89e46dce8c8fd8e794499947fc.camel@linuxfoundation.org> <SN6PR11MB279783ED5D18450811B1189988DA0@SN6PR11MB2797.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Groupsio-MsgNum: 49165
Content-Type: multipart/mixed; boundary="nextPart1880475.WdULFF7NVh"
Content-Transfer-Encoding: 7Bit

--nextPart1880475.WdULFF7NVh
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Release notes draft attached, including a dedication to Scott (wasn't sure where to put that so I've just left it at the top) and contributors list. Let me know if you notice anything missing/incorrect. 

I've also sent out the 3.1 migration guide for the reference manual, Richard has just merged the changes:

  http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=dunfell&id=c31ddaba1f3181c577fdaa3ce519a42b6f8f2d9a

Publishing to the website is still TBD, but some review there would be great as well.

Cheers,
Paul

--nextPart1880475.WdULFF7NVh
Content-Disposition: attachment; filename="releasenotes_3_1.txt"
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; name="releasenotes_3_1.txt"

This release is dedicated to Scott Rifenbark, technical writer for the Yoct=
o Project from the project's inception in 2010 until his passing in January=
 2020. Our documentation stands in his memory, and it is fitting that some =
of his character will always be in those words.

-------------
Contributors
-------------

Thanks to the following people who contributed to this release:

Adrian Bunk
Adrian Freihofer
Alejandro del Castillo
Alejandro Hernandez Samaniego
Alessio Igor Bogani
Alexander Hirsch
Alexander Kanavin
Alex Kiernan
Alex Kube
Alistair Francis
Anders Wallin
Andreas M=C3=BCller
Andreas Oberritter
Andreea Silvia Volosincu
Andr=C3=A9 Draszik
Andrej Valek
Andre McCurdy
Andrey Zhizhikin
An=C3=ADbal Lim=C3=B3n
Anuj Mittal
Armin Kuster
Bartosz Golaszewski
Bruce Ashfield
Carlos Rafael Giani
Catalin Enache
Changhyeok Bae
Changqing Li
Charles-Antoine Couret
Chee Yang Lee
Chen Qi
Chris Laplante
Christian Herzig
Christophe PRIOUZEAU
Christopher Clark
Christopher Larson
Codrin Ciubotariu
Daisuke Yamane
Dan Callaghan
Daniel Dragomir
Daniel Gomez
Daniel McGregor
David Reyna
Denys Dmytriyenko
Diego Rondini
Domarys Correa
Douglas Royds
Eduardo Abinader
Ernst Sj=C3=B6strand
Eugene Smirnov
Ferry Toth
Frazer Clews
Fred Baksik
Gavin Li
George McCollister
Goran Cengic
grygorii tertychnyi
Haiqing Bai
Haris Okanovic
Henning Schild
He Zhe
Hongxu Jia
Ivan Efimov
Jacob Kroon
Jaewon Lee
Jagadeesh Krishnanjanappa
Jan Kaisrlik
Jan Luebbe
Jan-Simon Moeller
Jan Vermaete
Jate Sujjavanich
Jean-Francois Dagenais
Jean-Marie LEMETAYER
Jefro
Jens Rehsack
Jeremy Puhlman
Joerg Vehlow
Joe Slater
Jon Mason
Joshua Watt
Junling Zheng
Kai Kang
Kalle Lampila
Kate Stewart
Kevin Hao
Khem Raj
Kyle Russell
Liwei Song
Li Zhou
Lieu Ta
Lori Hikichi
Luca Ceresoli
Luis Martins
Manjukumar Matha
Mark Asselstine
Mark Hatle
Martin Jansa
Martin Kelly
Matthias Schoepfer
Mattias Hansson
Matt Ranostay
Maxime Roussin-B=C3=A9langer
Maxim Uvarov
Max Krummenacher
Max Tomago
Michael Halstead
Michael Ho
Mike Crowe
Mike Looijmans
Mikko Rapeli
Mingde (Matthew) Zeng
Ming Liu
Mingli Yu
Nathan Hartman
Nathan Rossi
Naveen Saini
Nicola Lunghi
Nicolas Dechesne
Niko Mauno
Norbert Wesp
Ola x Nilsson
Oleg Polyakov
Oleksandr Kravchuk
Oleksiy Obitotskyy
Otavio Salvador
Ovidiu Panait
Pascal Bach
Pau Espin Pedrol
Paul Barker
Paul Eggleton
Paul Gortmaker
Peiran Hong
Peter Bergin
Peter Kjellerstedt
Petr Vorel
Phil Blundell
Pierre-Jean Texier
Quanyang Wang
Rasmus Villemoes
Ricardo Ribalda Delgado
Richard Leitner
Richard Purdie
Rich Persaud
Robert Joslyn
Robert P. J. Day
Robert Yang
Ross Burton
Ruslan Bilovol
Sai Hari Chandana Kalluri
Sakib Sajal
Samuli Piippo
Scott Branden
Scott Murray
Scott Rifenbark
Shohei Maruyama
Slavic Brutalik
Stefan Agner
Stefan Eichenberger
Stefan Ghinea
Stefan Kral
Stefan M=C3=BCller-Klieser
Stefano Babic
Stephen Jolley
Tanu Kaskinen
Taras Kondratiuk
Tim Orling
Tom Benn
Tom Hochstein
Torbj=C3=B6rn Svensson
Trevor Gamblin
Trevor Woerner
Vasyl Gomonovych
Victor Kamensky
Vinay Kumar
Vineela Tummalapalli
Volker Vogelhuber
Wang Mingyu
Wenlin Kang
William A. Kennington III
Yanfei Xu
Yann Dirson
Yeoh Ee Peng
Yi Zhao
Yongxin Liu
Zang Ruochen
Zheng Ruoqin
Zhixiong Chi



----------------------------
New Features / Enhancements
----------------------------
* Linux kernel 5.4, gcc 9.3, glibc 2.31 and ~240 other recipe upgrades
* New recipes: alsa-topology-conf, alsa-ucm-conf, diffoscope, enchant2, its=
tool, jquery, libubootenv, libucontext, python3-libarchive-c, python3-magic
* Host System requirements changes:
 - gcc 5.X required as a minimum
 - python 3.5 required as a minimum
 - tar 1.28 required as a minimum
 - pod2man and makeinfo are no longer required
* Binary reproducibility improvements
 - Enabled reproducible builds by default in poky.conf
 - QA tests now run diffoscope on saved output
* Hash Equivalence
 - Significant improvements in robustness of shared state hash equivalence
 - Enabled a local hash equivalence server by default in poky.conf
 - Log equivalent hashes
* New oe-pkgdata-browser UI to browse the pkgdata database - makes it easie=
r to explore and follow links between packages
* New features_check class replaces distro_features_check and adds equivale=
nt functionality for MACHINE_FEATURES and COMBINED_FEATURES
* New PARSE_ALL_RECIPES variable for situations where you wish to parse all=
 recipes (perhaps most useful within tests and tinfoil scripts)
* New AVAILABLE_LICENSES variable that lists all licenses
* New IMAGE_LINGUAS_COMPLEMENTARY variable to enable adding additional per-=
language complementary packages
* Support for gdbm and readline is now optional via PACKAGECONFIG in severa=
l recipes to make it easier to build GPLv3-free images
* Added libubootenv which replaces u-boot-fw-utils
* Add new "mirror" mode to archiver class to enable producing filtered sour=
ce mirrors
* Added Zstandard compression support as an image conversion (as .zst)=20
* Added systemd support in psplash
* Enabled experimental builds under Windows with WSLv2
* Added buildtools-extended-tarball - extended version of buildtools contai=
ning all of build-essentials (including gcc; mainly for continued CentOS 7 =
support)
 - Added install-buildtools helper script to make it easier to install buil=
dtools
* wic image creator improvements:
 - wic cp: can now copy files from an image as well as to it
 - wic rm: add -r to recursively delete directories
 - rawcopy: Support files in sub-directories
 - Added --include-path argument to rootfs source plugin
 - Also use APPEND when composing kernel boot parameters
 - Add esp_label and esp_extra_blocks parameters to isoimage-isohybrid plug=
in to customise label/size of EFI system partition
 - Use wic instead of live image type for machines based upon the x86-base
 - genericx86: allow overriding EFI_PROVIDER via wic wks.in to allow changi=
ng bootloader
 - Preserve intermediate files
 - Beautified 'wic help'
* runqemu improvements:
 - Added options that enable virgl with the SDL frontend
 - Added multiconfig support
 - Added virtio block device
 - Added network bridge support
 - Added support for multiple NICs
* Architecture / machine-specific enhancements:
 - Added support for PowerPC64 Little Endian (powerpc64le)
 - Added tune-cortexa72-cortexa53 tunes
 - Added tune-power9 tunes
 - Update MicroBlaze tune to v11.0
 - Enable 64-bit MicroBlaze (non-Linux at present)
 - Added tunes for 32-bit and 64-bit RISC-V no-float (riscv32nf and riscv64=
nf respectively)=20
 - qemuriscv64: set configuration to enable building Xvisor (from meta-virt=
ualization)
 - systemd-bootchart: Add mips64 tuples
 - systemd-bootchart: Backport RISC-V support
 - mips: Enable gnu-hash-style on glibc
 - linux-yocto-dev: added paravirt_kvm support for qemux86-64
 - qemumips: use std vga instead of cirrus vga
 - webkitgtk: enable gobject-introspection for armv7ve and armv7a
 - weston-init: use the drm/kms backend rather than fbdev one for qemux86 m=
achines
* bitbake improvements:
 - Completely reworked npm fetching support with much more logical SRC_URI =
layout
 - Support SHA1, SHA384 and SHA512 SRC_URI checksums, and no longer suggest=
 new MD5 value in match failure messages
 - The --runonly/--runall options now accept "do_task" as well as "task"
 - New BB_LOGCONFIG variable to enable specifying custom logging
 - Added vim indentation support for the BitBake language (bitbake/contrib/=
vim)
 - Added support for "proxy" fetcher modules that build on top of existing =
fetchers
 - Added a TeamCity service message frontend (bitbake UI implementation)
 - Added extra debug messages when locked sigs mismatches occur
 - tinfoil: added multiconfig support
 - Added a bb.utils.get_referenced_vars() function
 - Added autobuilder logging configuration (under contrib)
* Kernel-related improvements:
 - kernel-yocto: allow external (aka non-integrated) BSPs to supply patches
 - kernel-yocto.bbclass: Support config fragments with externalsrc
 - kernelsrc.bbclass: Fix externalsrc support
 - kernel-fitimage: Cope with non-standard kernel deploy subdirectory
 - kernel-fitimage: Handle overlays in EXTERNAL_KERNEL_DEVICETREE
 - kernel-fitimage: introduce FIT_SIGN_ALG
 - kernel-devicetree: Cope with non-standard kernel deploy subdirectory
 - kernel: Make symlink to vmlinux.64 in boot directory
 - linux-yocto: common-pc-drivers.cfg: add CONFIG_INPUT_UINPUT
* SDK-related improvements:
 - Support custom templateconf.cfg in extensible SDK
 - Make integrated buildtools optional for extensible SDK
 - Implement xz compression options for SDK (SDK_XZ_OPTIONS and SDK_XZ_COMP=
RESSION_LEVEL)
 - Extended recipes to nativesdk: gnupg, libksba, npth, p11-kit, pinentry
* bitbake-layers improvements:
 - layerindex-fetch: use branch when specified
 - layerindex-fetch: add option to do a shallow clone of layer repo
 - query: Add multiconfig option
* devtool improvements:
 - Added -r/--remove-work option to devtool finish and devtool reset
 - Added -I/--key option to devtool deploy-target to specify SSH private ke=
y=20
 - New DEVTOOL_DISABLE_MENUCONFIG variable to allow recipes to declare that=
 menuconfig is not supported
* resulttool improvements:
 - report: Enable report to use regression_map
 - report: Enable output raw test results
 - report: Added total statistic to test result
 - report: Enable report selected test case result
 - store: Enable adding extra test environment data
* Package splitting enhancements:
 - libcheck: split /usr/bin/checkmk into its own package
 - gnupg: Split gpg and gpg-agent into a minimal gnupg-gpg package
 - glibc: move ldconfig to its own package
 - coreutils: Move stdbuf into an own package coreutils-stdbuf
 - harfbuzz: split libharfbuzz-subset.so to its own binary package
 - libevent: split each shared library into its own package
* musl: Add support for multilib
* tclibc-baremetal: Include qemu in the SDK
* tclibc-newlib: Include qemu in the SDK
* newlib: Enable building libstdc++ for newlib based toolchains
* baremetal-helloworld: new recipe in meta-skeleton for baremetal examples =
on QEMU
* oe-pkgdata-util: Enable list-pkgs to print ordered packages
* iproute2: add devlink support
* iproute2: make elfutils support optional
* iptables: Allow overriding rules file location
* iptables: Add systemd helper unit for IPv6 too
* testimage.bbclass: enable ssh agent forwarding
* icecc: Export ICECC_CC and friends via wrapper-script
* meta/lib/oe/package_manager.py: Enable sha256 checksums in opkg indexer
* classes/image_types_wic: Depend on do_image_complete tasks
* meson.bbclass: allow buildtype to be changed (e.g. production vs. debug, =
depends upon upstream support)
* meson.bbclass: warn if cross property defaults are used
* mesa.inc: allow the user to choose the build type
* mesa-gl: Allow mesa-gl to build without X11 enabled
* weston-init: Allow use of weston without input devices
* Added full version of "less" command to packagegroup-core-full-cmdline
* New mime-xdg class for recipes that install applications that handle mime=
 types
* Added checks for missing mime / mime-xdg inherit in recipes
* Update inittab when init-manager =3D "busybox" to disable ctrl+alt+del, m=
ount swap and add /dev/{fd,stdin,stdout,stderr} symlinks
* Extended libxcrypt recipe with libxcrypt-native variant
* base.bbclass: Report only the licenses that are incompatible for a packag=
e
* package.bbclass: Report only the licenses that are incompatible
* package.bbclass: Allow INHIBIT_PACKAGE_STRIP_FILES to skip .ko and static=
 libs
* package.bbclass: Support stripping and debug copy of static libraries
* license_image.bbclass: check and reject packages which have incompatible =
licenses
* license_image.bbclass: Report only the licenses that are incompatible
* cmake: Add a knob for cmake VERBOSE settings
* cmake.bbclass: Define LIB_SUFFIX for improved multilib support in certain=
 recipes
* util-linux: Use PCRE for improved regular expression support in hardlink =
command
* gcc-configure: Enable the use of different symbol versioning
* perl: support cpan versions of core modules
* mesa: Allow building the virgl driver to be configurable
* buildhistory: Allow customising buildhistory tags
* buildhistory-analysis: filter out -src changes by default
* sstate: Add ability to hide summary output for sstate
* cve-check: Switch to NVD CVE JSON feed version 1.1
* grub-efi-cfg: enable per-label APPEND override
* buildstats-plot.sh: allow filtering by task
* buildstats*.sh: add accumulate parameter to scripts
* buildstats*.sh: add recipe parameter to scripts
* u-boot-tools: Split out inc file
* mc: rrecommend the full terminfo database instead of rdepending on it
* systemd: Enable smack, audit and acl functionality based on DISTRO_FEATUR=
ES
* systemd: Reinstate systemd-hwdb-update.service
* sanity: check the format of SDK_VENDOR
* insane: improve textrel warning message


-------------
Known Issues
-------------

* The poky distribution configuration (DISTRO =3D "poky") enables ptests by=
 default to enable runtime testing of various components. In this release, =
a dependency needed to be added that has resulted in a significant increase=
 in the number of components that will be built just when building a simple=
 image such as core-image-minimal. If you do not need runtime tests enabled=
 for core components, then it is recommended that you remove "ptest" from D=
ISTRO_FEATURES to save a significant amount of build time e.g. by adding th=
e following in your configuration:

DISTRO_FEATURES_remove =3D "ptest"


* With multilib enabled, INCOMPATIBLE_LICENSE does not work correctly. This=
 issue has apparently been present for some time, and a fix is in progress.=
 For further details see bug 13865:=20
 =20
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13865


----------------
Recipe Licenses
----------------
The following corrections have been made to the LICENSE values set by recip=
es:

* base-passwd: GPLv2+ -> GPLv2
* cairo: all components other than cairo-perf-utils are dual-licensed i.e. =
a choice of MPL-1.1 or LGPLv2.1 (instead of both applying)
* cmake: clarify BSD -> BSD-3-Clause
* file: clarify BSD -> BSD-2-Clause
* flex: clarify BSD -> BSD-2-Clause
* libarchive: clarify BSD -> BSD-2-Clause
* libksba: the tools (e.g. build system, tests) & manual are licensed as GP=
Lv3+, and the library itself is a choice between GPLv2+ or LGPLv3+.
* libogg: clarify BSD -> BSD-3-Clause
* libpcap: clarify BSD -> BSD-3-Clause
* libpcre: clarify BSD -> BSD-3-Clause
* libtheora: clarify BSD -> BSD-3-Clause
* libtirpc: clarify BSD -> BSD-3-Clause
* libvorbis: clarify BSD -> BSD-3-Clause
* libwebp: clarify BSD -> BSD-3-Clause
* libxpm: BSD -> MIT
* lighttpd: clarify BSD -> BSD-3-Clause
* ovmf: clarify BSD -> BSD-2-Clause
* p11-kit: clarify BSD -> BSD-3-Clause
* pbzip2: clarify BSD -> bzip2
* rpcbind: clarify BSD -> BSD-3-Clause
* speex: clarify BSD -> BSD-3-Clause
* speexdsp: clarify BSD -> BSD-3-Clause
* tcp-wrappers: clarify BSD -> BSD-1-Clause
* wpa-supplicant: clarify BSD -> BSD-3-Clause


-----------------------
Migration instructions
-----------------------

For details on changes that you might need to make when migrating to the Yo=
cto Project 3.1 release from previous releases, please see the following ma=
nual section:

http://www.yoctoproject.org/docs/3.1/ref-manual/ref-manual.html#moving-to-t=
he-yocto-project-3.1-release



---------------
Security Fixes
---------------
* aspell: CVE-2019-17544
* bind: CVE-2019-6471, CVE-2018-5743, [whitelisted CVE-2019-6470 ]
* binutils: CVE-2019-17450, CVE-2019-17451, CVE-2020-0551
* bluez: CVE-2020-0556
* e2fsprogs: CVE-2019-5188
* file: CVE-2019-18218
* gdb: CVE-2019-1010180
* ghostscript: CVE-2019-14869
* git: CVE-2019-1348, CVE-2019-1349, CVE-2019-1350, CVE-2019-1351, CVE-2019=
-1352, CVE-2019-1353, CVE-2019-1354, CVE-2019-1387, CVE-2019-19604
* glibc: CVE-2019-19126, CVE-2020-10029
* go: CVE-2019-16276
* iputils: [CVE-2000-1213, CVE-2000-1214 whitelisted]
* libarchive: CVE-2019-19221
* libgcrypt: CVE-2019-12904
* libpng: [CVE-2019-17371 whitelisted]
* libsdl2: fix CVE-2019-13616
* libsndfile1: [CVE-2018-13419 whitelisted]
* libsoup-2.4: CVE-2019-17266
* libtiff: CVE-2019-17546
* libxml2: CVE-2019-20388, CVE-2020-7595
* libxslt: CVE-2019-18197
* linux-yocto/5.2: CVE-2019-19332
* lz4: [CVE-2014-4715 whitelisted]
* nasm: CVE-2019-14248
* ncurses: CVE-2019-17594, CVE-2019-17595
* openssh: CVE-2019-16905
* openssl: [CVE-2019-0190 whitelisted]
* openssl: CVE-2019-1551
* ppp: CVE-2020-8597
* procps: [CVE-2018-1121 whitelisted]
* python3: CVE-2019-16056, CVE-2019-16935, [whitelisted CVE-2017-17522, CVE=
-2017-18207, CVE-2015-5652, CVE-2019-18348]
* qemu: CVE-2019-12068, CVE-2020-1711, CVE-2020-7039, CVE-2020-7211, CVE-20=
20-11102
* shadow: CVE-2019-19882
* sqlite3: CVE-2019-19244, CVE-2019-19880, CVE-2019-19923, CVE-2019-19924, =
CVE-2019-19925, CVE-2019-19926, CVE-2019-19959, CVE-2019-20218, CVE-2020-93=
27
* sudo: CVE-2019-14287
* sysstat: CVE-2019-16167, CVE-2019-19725
* wpa-supplicant: CVE-2019-16275



----------------
Recipe Upgrades
----------------
* acl: update to 2.2.53
* attr: update to 2.4.48
* acpica: upgrade to 20200214
* adwaita-icon-theme: upgrade 3.32.0 -> 3.34.3
* alsa-lib: 1.1.9 -> 1.2.1.2
* alsa-plugins: 1.1.9 -> 1.2.1
* alsa-utils: 1.1.9 -> 1.2.1
* aspell: upgrade from 0.60.7 to 0.60.8
* assimp: update to 5.0.1
* atk: upgrade 2.32.0 -> 2.34.1
* at-spi2-atk: upgrade 2.32.0 -> 2.34.1
* at-spi2-core: upgrade 2.32.1 -> 2.34.0
* babeltrace2: added 2.0.2
* babeltrace: update to 1.5.8
* bash-completion: upgrade 2.9 -> 2.10
* bash: update to 5.0 patch 16
* bind: update 9.11.5-P4 -> 9.11.13
* binutils: Upgrade to 2.34 release
* bison: upgrade 3.4.1 -> 3.5.3
* bluez5: update 5.50 -> 5.54
* boost: upgrade 1.71.0 -> 1.72.0
* btrfs-tools: update to 5.4.1
* busybox:upgrade 1.31.0 -> 1.31.1
* ccache: upgrade 3.7.3 -> 3.7.7
* cmake: upgrade 3.15.3 -> 3.16.5
* cpio: update to 2.13
* createrepo-c: upgrade to 0.15.4
* cronie: upgrade 1.5.4 -> 1.5.5
* cryptodev: update to Jan.23, 2020
* cups: update to 2.3.1
* curl: upgrade 7.66.0 -> 7.69.1
* debianutils: update to 4.9.1
* dhcp: upgrade 4.4.1 -> 4.4.2
* diffstat: update to 1.63
* dos2unix: update to 7.4.1
* e2fsprogs:upgrade 1.45.3 -> 1.45.4
* elfutils: upgrade 0.177 -> 0.178
* ell: update to 0.30
* enchant2: upgrade 2.2.7 -> 2.2.8
* epiphany: upgrade 3.32.4 -> 3.34.4
* ethtool: upgrade 5.2 -> 5.4
* eudev: upgrade 3.2.8 -> 3.2.9
* expat:upgrade 2.2.8 -> 2.2.9
* ffmpeg: upgrade 4.2.1 -> 4.2.2
* file: upgrade 5.37 -> 5.38
* findutils: Upgrade to 4.7.0
* flex: update to 2.6.4
* fribidi: upgrade 1.0.5 -> 1.0.9
* gcc: Upgrade to 9.3 bugfix release
* gcr: update to 3.34.0
* gdb: Upgrade to 9.1 release
* gdk-pixbuf: upgrade 2.38.2 -> 2.40.0
* gettext-minimal-native: update to 0.20.1
* gettext: update to 0.20.1
* ghostscript: upgrade 9.27 -> 9.50
* git: update to 2.24.1
* glew: upgrade 2.1.0 -> 2.2.0
* glib-2.0: upgrade to 2.62.4
* glibc: upgrade to 2.31
* glib-networking: update to 2.62.3
* glide: update to 0.13.3
* gmp: Upgrade to 6.2.0
* gnu-config: upgrade to latest revision
* gnu-efi: Upgrade 3.0.9 -> 3.0.11
* gnupg: upgrade 2.2.17 -> 2.2.20
* gnutls: upgrade 3.6.8 -> 3.6.12
* go: Add go1.13 recipes
* gobject-introspection: update to 1.62.0
* go: Update to 1.14.1 minor release
* grep: upgrade 3.3 -> 3.4
* gsettings-desktop-schemas: upgrade 3.32.0 -> 3.36.0
* gstreamer1.0-libav: upgrade to version 1.16.2
* gstreamer1.0-omx: upgrade to version 1.16.2
* gstreamer1.0-plugins-bad: upgrade to version 1.16.2
* gstreamer1.0-plugins-base: upgrade to version 1.16.2
* gstreamer1.0-plugins-good: upgrade to version 1.16.2
* gstreamer1.0-plugins-ugly: upgrade to version 1.16.2
* gstreamer1.0-python: upgrade to version 1.16.2
* gstreamer1.0-rtsp-server: upgrade to version 1.16.2
* gstreamer1.0: upgrade to version 1.16.2
* gstreamer1.0-vaapi: upgrade to version 1.16.2
* gst-validate: upgrade to version 1.16.2
* gtk+3: update to 3.24.14
* gtk-doc: upgrade 1.31 -> 1.32
* harfbuzz: upgrade 2.6.1 -> 2.6.4
* icu: upgrade 64.2 -> 66.1
* ifupdown: update 0.8.22 -> 0.8.35
* iproute2: update 5.2.0 -> 5.5.0
* iptables: upgrade 1.8.3 -> 1.8.4
* iso-codes:upgrade 4.3 -> 4.4
* iw: upgrade 5.3 -> 5.4
* kbd: update to 2.2.0
* kernel-devsrc: update to v5.4+
* kexec-tools: update to 2.0.20
* kmscube: upgrade to latest revision
* libarchive: upgrade 3.4.0 -> 3.4.2
* libcap-ng:upgrade 0.7.9 -> 0.7.10
* libcap: update to 2.32
* libc-headers: update to v5.4
* libcheck: upgrade 0.12.0 -> 0.14.0
* libcomps: update to 0.1.14
* libdazzle: upgrade 3.32.3 -> 3.34.1
* libdrm: upgrade 2.4.99 -> 2.4.100
* libedit: upgrade 20191025-3.1 -> 20191231-3.1
* libepoxy: upgrade 1.5.3 -> 1.5.4
* liberror-perl: update 0.17027 -> 0.17029
* libffi: update to 3.3 final
* libgcrypt: upgrade 1.8.4 -> 1.8.5
* libgloss: update to 3.2.0
* libgpg-error: upgrade 1.36 -> 1.37
* libical: upgrade 3.0.6 -> 3.0.7
* libidn2: upgrade 2.2.0 -> 2.3.0
* libinput: upgrade 1.14.1 -> 1.15.2
* libjitterentropy: Upgrade 2.1.2 -> 2.2.0
* libjpeg-turbo: upgrade 2.0.3 -> 2.0.4
* libmodule-build-perl: upgrade 0.4229 -> 0.4231
* libmodulemd-v1: update to 1.8.16
* libnsl2: Update to latest master
* libnss-dns: update to 0.14.1
* libpcre2: upgrade 10.33 -> 10.34
* libpcre: upgrade 8.43 -> 8.44
* libpipeline: upgrade 1.5.1 -> 1.5.2
* librepo: upgrade 1.10.5 -> 1.11.2
* libsdl2: upgrade 2.0.10 -> 2.0.12
* libsecret: upgrade 0.19.0 -> 0.20.1
* libsolv: upgrade 0.7.6 -> 0.7.10
* libsoup-2.4: update to 2.68.4
* libtasn1: upgrade 4.14 -> 4.16.0
* libtirpc: upgrade 1.1.4 -> 1.2.5
* libubootenv: update to latest git hash
* libva: upgrade 2.5.0 -> 2.6.1
* libva-utils: upgrade 2.5.0 -> 2.6.0
* libwebp: upgrade 1.0.3 -> 1.1.0
* libx11: upgrade to 1.6.9
* libxcrypt: update to 4.4.14
* libxfont2:upgrade 2.0.3 -> 2.0.4
* libxkbcommon: update to 0.10.0
* libxml2: update to 2.9.10
* libxml-parser-perl: update to 2.46
* libxpm: upgrade 3.5.12 -> 3.5.13
* libxslt: update to 1.1.34
* libxvmc:upgrade 1.0.11 -> 1.0.12
* lighttpd: upgrade 1.4.54 -> 1.4.55
* linux-firmware: upgrade to latest revision
* linux-yocto-dev: update to v5.6+
* linux-yocto: introduce 5.4 recipes (5.4.27)
* linux-yocto-rt/5.4: update to -rt16
* llvm: Upgrade to 9.0.1 release
* ltp: Update to 20200120
* lttng-modules: update to 2.11.2
* lttng-tools: update to 2.11.2
* lttng-ust: update to 2.11.1
* make: 4.2.1 -> 4.3
* man-db: update to 2.9.0
* man-pages: update to 5.05
* mesa: updated to mesa 20.0.1 release
* meson: update to 0.53.2
* mkfontscale: update to 1.2.1
* mmc-utils: upgrade to latest revision
* mpg123: upgrade 1.25.11 -> 1.25.13
* msmtp: upgrade 1.8.5 -> 1.8.7
* mtdev: upgrade 1.1.5 -> 1.1.6
* musl: upgrade beyond 1.2.4
* ncurses: upgrade 6.1+20190803 -> 6.2
* netbase: 5.6 -> 6.1
* newlib: upgrade to 3.2.0
* nfs-utils: update to 2.4.3
* ninja: upgrade 1.9.0 -> 1.10.0
* ofono: update to 1.31
* opensbi: Bump from 0.4 to 0.6
* openssh: Upgrade 8.0p1 -> 8.2p1
* openssl: Upgrade 1.1.1d -> 1.1.1f
* opkg: upgrade to version 0.4.2
* opkg-utils: upgrade to version 0.4.2
* orc: update to 0.4.31
* ovmf: update to 201911
* p11-kit: upgrade 0.23.16.1 -> 0.23.20
* pango: upgrade 1.44.6 -> 1.44.7
* pciutils: upgrade 3.6.2 -> 3.6.4
* perl: update to 5.30.1
* piglit: upgrade to latest revision
* prelink: upgrade to latest revision (in the cross_prelink branch)
* procps: upgrade 3.3.15 -> 3.3.16
* psmisc: update to 23.3
* psplash: Update to latest git revision
* pulseaudio: 12.2 -> 13.0
* puzzles: upgrade to latest revision
* python3-dbus: upgrade 1.2.12 -> 1.2.16
* python3-docutils: upgrade 0.15 -> 0.16
* python3-gitdb: upgrade 2.0.5 -> 2.0.6
* python3-git: upgrade 3.0.2 -> 3.0.5
* python3-mako: upgrade 1.1.0 -> 1.1.1
* python3-numpy: upgrade to 1.17.4
* python3-pbr: upgrade 5.4.3 -> 5.4.4
* python3-pip: upgrade 19.2.3 -> 20.0.2
* python3-pycairo: upgrade 1.18.1 -> 1.19.0
* python3-pygments: update to 2.5.2
* python3-scons{-native}: upgrade 3.1.1 -> 3.1.2
* python3-setuptools: upgrade 41.2.0 -> 45.2.0
* python3-six: upgrade 1.12.0 -> 1.14.0
* python3: Upgrade 3.7.4 -> 3.8.2
* qemu: Upgrade to 4.2.0
* resolvconf: update to 1.82
* rng-tools: upgrade 6.7 -> 6.9
* ruby: update to v2.7.0
* screen: Upgrade 4.6.2 -> 4.8.0
* sed: upgrade to 4.8
* shadow: update 4.6 -> 4.8.1
* shared-mime-info: upgrade 1.10 -> 1.15
* socat: upgrade 1.7.3.3 -> 1.7.3.4
* speexdsp: 1.2rc3 -> 1.2.0
* sqlite3: upgrade 3.29 -> 3.31.1
* squashfs-tools: Upgrade to 4.4
* strace: Update to 5.5
* stress-ng: Upgrade 0.10.00 -> 1.13.0
* sudo: update to 1.8.31
* sysklogd: update to 2.1.1
* sysstat: update to 12.2.1
* systemd: Upgrade 243.2 -> v244.3
* systemtap: update to 4.2
* sysvinit: update 2.88dsf -> 2.96
* tcl: upgrade 8.6.9 -> 8.6.10
* texinfo: update to 6.7
* tiff: update to 4.1.0
* u-boot: Bump from 2019.07 -> 2020.01
* unifdef: upgrade 2.11 -> 2.12
* util-linux: upgrade 2.34 -> 2.35.1
* vala: upgrade 0.44.7 -> 0.46.6
* vim: update from 8.1.1518 to 8.2
* virglrenderer: update to 0.8.2
* vte: upgrade 0.56.3 -> 0.58.3
* vulkan-demos: update to latest revision
* vulkan: update to 1.1.126
* wayland-protocols: upgrade 1.18 -> 1.20
* wayland: upgrade 1.17.0 -> 1.18.0
* webkitgtk: update 2.24.4 -> 2.26.4
* weston: upgrade 7.0.0 -> 8.0.0
* x264: upgrade to latest revision
* xf86-video-intel: bump to latest SRCREV
* xkbcomp: upgrade 1.4.2 -> 1.4.3
* xkeyboard-config: 2.27 -> 2.28
* xorgproto: upgrade to 2019.2
* xserver-xorg: 1.20.5 -> 1.20.7
* yocto-bsps: update to v5.4.20

--nextPart1880475.WdULFF7NVh--
