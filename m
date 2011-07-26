Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1339B4C80332;
	Mon, 25 Jul 2011 19:11:14 -0500 (CDT)
Received: from mail-yx0-f180.google.com ([209.85.213.180])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 25 Jul 2011 17:11:13 -0700
Received: by yxk30 with SMTP id 30so3713470yxk.25
	for <multiple recipients>; Mon, 25 Jul 2011 17:11:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.173.234 with SMTP id v70mr6648718yhl.376.1311639073151;
	Mon, 25 Jul 2011 17:11:13 -0700 (PDT)
Received: by 10.236.108.9 with HTTP; Mon, 25 Jul 2011 17:11:13 -0700 (PDT)
Date: Mon, 25 Jul 2011 17:11:13 -0700
Message-ID: <CAPhnLPCmtfrmGUyy2KCVZ4FSzVvqeVO7jBOUU50cYzTbWPBvvA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Subject: [ANNOUNCEMENT] Milestone 2 Released
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Jul 2011 00:11:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

We are pleased to announce the second milestone of the coming
October release of Yocto 1.1. This milestone release is available at:

http://mirrors.kernel.org/yocto/poky/poky-bernard-5.1.0-m2.tar.bz2

Additional tarballs for the meta-intel, meta-qt3 and eclipse plugin are
available at:

http://mirrors.kernel.org/yocto/poky/meta-intel-bernard-5.1.0-m2.tar.bz2
http://mirrors.kernel.org/yocto/poky/meta-qt3-bernard-5.1.0-m2.tar.bz2
http://mirrors.kernel.org/yocto/poky/eclipse-poky-bernard-5.1.0-m2.tar.bz2

Thanks you everyone for all the hard work.

------------------
Elizabeth Flanagan
Yocto Project
Release Engineer

--------------------
Bernard 5.1.0-m2 Errata
--------------------
Release name: poky-bernard-5.1.0-m2
Repo: git://git.yoctoproject.org/poky.git
Branch: 1.1_M2
Tag: 1.1_M2.final
Hash: a62982ffb6b35acc70bb30a429fc854cf9a8873f
Download locations:
http://autobuilder.yoctoproject.org/downloads/poky/poky-bernard-5.1.0-m2.tar.bz2
http://mirrors.kernel.org/yocto/poky/poky-bernard-5.1.0-m2.tar.bz2

--------------------
Features
--------------------
1. Layer tooling
2. Basic functions of the HOB.
3. Share gcc work directory.
4. Cache redesign and reimplementation.
5. Some performance improvement measures such as splitting libc,
removing perl-native from bld dep.
6. Beagle board XM update.
7. Tracing: Add Systemtap support for user space tracing
8. 3G support

--------------------
Known Issues
--------------------
766 [mpc8315e-rdb] USB does not work on mpc8315e-rdb
638 need documentation for sstate
689 BB_ENV_EXTRAWHITE does not respect CCACHE_DIR


--------------------
Bugs Fixed
--------------------
1208 busybox powertop mess up our eclipse plugin
1218 [HOB] package selection logic inconsistent after select/deselect
several times
1219 [HOB] lots of bug traces when launching hob
1237 [sugarbay] Inconsistency detected by ld.so: dl-deps.c: 622:
_dl_map_object_deps: Assertion `nlist > 1' failed!
1215 Can't build minimal image with IMAGE_LINGUAS set
773 [routerstationpro] USB does not work on routerstationpro
1038 Recipe alsa-tools does not build
1209 eglibc 2.13 r5: cannot stat localedef when
ENABLE_BINARY_LOCALE_GENERATION = "0"
1072 machine-specific xorg.confs not being picked up
1037 web browser can't handle https pages
1040 Recipe clutter-box2d does not build
1107 Open or add person in contacts may segfault on blacksand
1025 Release of documentation needs to be rethought.
1195 [mips toolchain] cvs configure fail with no cvs_cv_func_printf_ptr set
868 GUI Progress bar sits at 0% until done when using GUI's with none server
1132 libxml-simple-perl do_configure Failed if being built after libxml-sax-perl
891 clutter is not included in the poky-image-sato-sdk
896 [N450] poky-image-clutter build failure
963 kernel tarballs being served up by autobuilder contain
missing/corrupted branches
1085 fetcher2: try mirror after failing checksum from upstream
1194 support DSF debugger
1213 btrfs-tools parallel make failure
1180 bitbake -c listtasks doesn't print to the console
1091 Adding .bbappend should invalidate cache
1140 Can't build update-rc.d if BB_NO_NETWORK=1
1182 poky-init-build-env user feedback need updated
1148 libxml2.so.2 unknown version errors on bootup
1197 Refresh x-load to include 2efa178acd56d83c86210b5934895cfb9ea62125
1198 refresh u-boot to include a 2011.06 recipe
1009 Building world fails with errors of conflicting providers of ssh
1128 Meaningless error message when python v3 is the only python available
904 LSB 4.1:Printing absent cups, foomatic and gs
1090 LSB4.1: lsb graphic library can't be installed into lsb-image
1118 LSB 4.1: Param_Value error
1196 LSB 4.1: Compilation error from startup-notification_0.12.bb
1136 do_menuconfig for linux-yocto needs ${B} exists
933 Add a build profile which checks the things which may need a proxy
790 Layer dependency support
1142 git fetcher error when wrong protocol is specified is not helpful
1163 gcc-cross-canadian needs set to TRANSLATED_TARGET_ARCH
1173 toolchain build failed with 20110613 build on autobuilder
1156 BSP formfactors not being picked up
1168 qt4-tools-nativesdk does not build
1186 Recent bitbake change results in git fetch during parse
1170 login.defs file shipped with base-passwd causes runtime warnings
1020 LSB4.1: LSB test suite need libQtOpenGL.so for hardware ppc, x86 and x86-64

