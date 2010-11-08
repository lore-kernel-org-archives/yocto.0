Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D5DC4C80815
	for <yocto@yoctoproject.org>; Mon,  8 Nov 2010 14:32:26 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Nov 2010 12:32:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,170,1288594800"; d="scan'208";a="855415437"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 08 Nov 2010 12:32:26 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi; Mon, 8 Nov 2010
	12:32:25 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 8 Nov 2010 12:32:24 -0800
Thread-Topic: [PULL] devel/toolchain Recipes upgrades
Thread-Index: Act/hA0NM6Zh0z1yStiw2oF7YRvqgg==
Message-ID: <8EA2C2C4116BF44AB370468FBF85A77701BC9526F4@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Richard Purdie <richard@openedhand.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: [PULL] devel/toolchain Recipes upgrades
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
X-List-Received-Date: Mon, 08 Nov 2010 20:32:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Saul/RP,
  This is a pull request for upgrading most of the devel/toolchain recipes.=
 This one is still missing the perl upgrade, and some gnome libs related py=
thon modules.
  I have done basic build testing of these recipes. And would like to see i=
n the master tree sooner, so that all the possible target combinations can =
be tested with these changes.

Thanks & Regards,
Nitin


 meta/recipes-devtools/autoconf/autoconf-2.65/autoconf-x.patch             =
                        |   36
 meta/recipes-devtools/autoconf/autoconf-2.65/autoheader-nonfatal-warnings.=
patch                   |   13
 meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-exclude.patch     =
                        |  137
 meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-foreign.patch     =
                        |   11
 meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-gnuconfigize.patch=
                        |   37
 meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-include.patch     =
                        |   12
 meta/recipes-devtools/autoconf/autoconf-2.65/config_site.patch            =
                        |   29
 meta/recipes-devtools/autoconf/autoconf-2.65/fix_path_xtra.patch          =
                        |  118
 meta/recipes-devtools/autoconf/autoconf-2.65/path_prog_fixes.patch        =
                        |  126
 meta/recipes-devtools/autoconf/autoconf-2.65/program_prefix.patch         =
                        |   19
 meta/recipes-devtools/autoconf/autoconf-2.68/autoconf-x.patch             =
                        |   36
 meta/recipes-devtools/autoconf/autoconf-2.68/autoheader-nonfatal-warnings.=
patch                   |   13
 meta/recipes-devtools/autoconf/autoconf-2.68/autoreconf-exclude.patch     =
                        |  137
 meta/recipes-devtools/autoconf/autoconf-2.68/autoreconf-foreign.patch     =
                        |   11
 meta/recipes-devtools/autoconf/autoconf-2.68/autoreconf-gnuconfigize.patch=
                        |   37
 meta/recipes-devtools/autoconf/autoconf-2.68/autoreconf-include.patch     =
                        |   12
 meta/recipes-devtools/autoconf/autoconf-2.68/config_site.patch            =
                        |   34
 meta/recipes-devtools/autoconf/autoconf-2.68/path_prog_fixes.patch        =
                        |  126
 meta/recipes-devtools/autoconf/autoconf.inc                               =
                        |    3
 meta/recipes-devtools/autoconf/autoconf_2.65.bb                           =
                        |   23
 meta/recipes-devtools/autoconf/autoconf_2.68.bb                           =
                        |   21
 meta/recipes-devtools/bison/bison_2.4.2.bb                                =
                        |   22
 meta/recipes-devtools/bison/bison_2.4.3.bb                                =
                        |   22
 meta/recipes-devtools/diffstat/diffstat_1.47.bb                           =
                        |   26
 meta/recipes-devtools/diffstat/diffstat_1.54.bb                           =
                        |   22
 meta/recipes-devtools/gcc/gcc-4.5.0.inc                                   =
                        |   84
 meta/recipes-devtools/gcc/gcc-4.5.0/100-uclibc-conf.patch                 =
                        |   37
 meta/recipes-devtools/gcc/gcc-4.5.0/103-uclibc-conf-noupstream.patch      =
                        |   15
 meta/recipes-devtools/gcc/gcc-4.5.0/200-uclibc-locale.patch               =
                        | 2840 ----------
 meta/recipes-devtools/gcc/gcc-4.5.0/203-uclibc-locale-no__x.patch         =
                        |  233
 meta/recipes-devtools/gcc/gcc-4.5.0/204-uclibc-locale-wchar_fix.patch     =
                        |   48
 meta/recipes-devtools/gcc/gcc-4.5.0/205-uclibc-locale-update.patch        =
                        |  519 -
 meta/recipes-devtools/gcc/gcc-4.5.0/301-missing-execinfo_h.patch          =
                        |   13
 meta/recipes-devtools/gcc/gcc-4.5.0/302-c99-snprintf.patch                =
                        |   13
 meta/recipes-devtools/gcc/gcc-4.5.0/303-c99-complex-ugly-hack.patch       =
                        |   14
 meta/recipes-devtools/gcc/gcc-4.5.0/304-index_macro.patch                 =
                        |   28
 meta/recipes-devtools/gcc/gcc-4.5.0/305-libmudflap-susv3-legacy.patch     =
                        |   49
 meta/recipes-devtools/gcc/gcc-4.5.0/306-libstdc++-namespace.patch         =
                        |   38
 meta/recipes-devtools/gcc/gcc-4.5.0/307-locale_facets.patch               =
                        |   19
 meta/recipes-devtools/gcc/gcc-4.5.0/602-sdk-libstdc++-includes.patch      =
                        |   20
 meta/recipes-devtools/gcc/gcc-4.5.0/64bithack.patch                       =
                        |   33
 meta/recipes-devtools/gcc/gcc-4.5.0/740-sh-pr24836.patch                  =
                        |   29
 meta/recipes-devtools/gcc/gcc-4.5.0/800-arm-bigendian.patch               =
                        |   34
 meta/recipes-devtools/gcc/gcc-4.5.0/904-flatten-switch-stmt-00.patch      =
                        |   74
 meta/recipes-devtools/gcc/gcc-4.5.0/arm-bswapsi2.patch                    =
                        |   13
 meta/recipes-devtools/gcc/gcc-4.5.0/arm-nolibfloat.patch                  =
                        |   24
 meta/recipes-devtools/gcc/gcc-4.5.0/arm-softfloat.patch                   =
                        |   16
 meta/recipes-devtools/gcc/gcc-4.5.0/arm-unbreak-eabi-armv4t.dpatch        =
                        |   36
 meta/recipes-devtools/gcc/gcc-4.5.0/cache-amnesia.patch                   =
                        |   31
 meta/recipes-devtools/gcc/gcc-4.5.0/disable_relax_pic_calls_flag.patch    =
                        |   44
 meta/recipes-devtools/gcc/gcc-4.5.0/fedora/gcc43-c++-builtin-redecl.patch =
                        |  114
 meta/recipes-devtools/gcc/gcc-4.5.0/fedora/gcc43-cpp-pragma.patch         =
                        |  284 -
 meta/recipes-devtools/gcc/gcc-4.5.0/fedora/gcc43-i386-libgomp.patch       =
                        |   65
 meta/recipes-devtools/gcc/gcc-4.5.0/fedora/gcc43-ia64-libunwind.patch     =
                        |  550 -
 meta/recipes-devtools/gcc/gcc-4.5.0/fedora/gcc43-java-debug-iface-type.pat=
ch                      |   19
 meta/recipes-devtools/gcc/gcc-4.5.0/fedora/gcc43-java-nomulti.patch       =
                        |   48
 meta/recipes-devtools/gcc/gcc-4.5.0/fedora/gcc43-libgomp-speedup.patch    =
                        | 2797 ---------
 meta/recipes-devtools/gcc/gcc-4.5.0/fedora/gcc43-ppc32-retaddr.patch      =
                        |   90
 meta/recipes-devtools/gcc/gcc-4.5.0/fedora/gcc43-pr27898.patch            =
                        |   16
 meta/recipes-devtools/gcc/gcc-4.5.0/fedora/gcc43-pr32139.patch            =
                        |   19
 meta/recipes-devtools/gcc/gcc-4.5.0/fedora/gcc43-pr33763.patch            =
                        |  159
 meta/recipes-devtools/gcc/gcc-4.5.0/fedora/gcc43-rh251682.patch           =
                        |   89
 meta/recipes-devtools/gcc/gcc-4.5.0/fedora/gcc43-rh330771.patch           =
                        |   31
 meta/recipes-devtools/gcc/gcc-4.5.0/fedora/gcc43-rh341221.patch           =
                        |   32
 meta/recipes-devtools/gcc/gcc-4.5.0/fortran-cross-compile-hack.patch      =
                        |   30
 meta/recipes-devtools/gcc/gcc-4.5.0/gcc-4.0.2-e300c2c3.patch              =
                        |  319 -
 meta/recipes-devtools/gcc/gcc-4.5.0/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch =
                        |   31
 meta/recipes-devtools/gcc/gcc-4.5.0/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.pa=
tch                     |  114
 meta/recipes-devtools/gcc/gcc-4.5.0/gcc-arm-frename-registers.patch       =
                        |   25
 meta/recipes-devtools/gcc/gcc-4.5.0/gcc-flags-for-build.patch             =
                        |  178
 meta/recipes-devtools/gcc/gcc-4.5.0/gcc-ice-hack.dpatch                   =
                        |  331 -
 meta/recipes-devtools/gcc/gcc-4.5.0/gcc-poison-dir-extend.patch           =
                        |   24
 meta/recipes-devtools/gcc/gcc-4.5.0/gcc-poison-parameters.patch           =
                        |   83
 meta/recipes-devtools/gcc/gcc-4.5.0/gcc-poison-system-directories.patch   =
                        |  201
 meta/recipes-devtools/gcc/gcc-4.5.0/gcc-pr43698-arm-rev-instr.patch       =
                        |  117
 meta/recipes-devtools/gcc/gcc-4.5.0/gcc-uclibc-locale-ctype_touplow_t.patc=
h                       |   67
 meta/recipes-devtools/gcc/gcc-4.5.0/gcc_revert_base_version_to_4.5.0.patch=
                        |    9
 meta/recipes-devtools/gcc/gcc-4.5.0/libstdc++-emit-__cxa_end_cleanup-in-te=
xt.patch                |   40
 meta/recipes-devtools/gcc/gcc-4.5.0/libstdc++-pic.dpatch                  =
                        |   71
 meta/recipes-devtools/gcc/gcc-4.5.0/optional_libstdc.patch                =
                        |   23
 meta/recipes-devtools/gcc/gcc-4.5.0/pr30961.dpatch                        =
                        |  179
 meta/recipes-devtools/gcc/gcc-4.5.0/pr35942.patch                         =
                        |   38
 meta/recipes-devtools/gcc/gcc-4.5.0/zecke-xgcc-cpp.patch                  =
                        |   28
 meta/recipes-devtools/gcc/gcc-4.5.1.inc                                   =
                        |   81
 meta/recipes-devtools/gcc/gcc-4.5.1/100-uclibc-conf.patch                 =
                        |   37
 meta/recipes-devtools/gcc/gcc-4.5.1/103-uclibc-conf-noupstream.patch      =
                        |   15
 meta/recipes-devtools/gcc/gcc-4.5.1/200-uclibc-locale.patch               =
                        | 2840 ++++++++++
 meta/recipes-devtools/gcc/gcc-4.5.1/203-uclibc-locale-no__x.patch         =
                        |  233
 meta/recipes-devtools/gcc/gcc-4.5.1/204-uclibc-locale-wchar_fix.patch     =
                        |   48
 meta/recipes-devtools/gcc/gcc-4.5.1/205-uclibc-locale-update.patch        =
                        |  519 +
 meta/recipes-devtools/gcc/gcc-4.5.1/301-missing-execinfo_h.patch          =
                        |   13
 meta/recipes-devtools/gcc/gcc-4.5.1/302-c99-snprintf.patch                =
                        |   13
 meta/recipes-devtools/gcc/gcc-4.5.1/303-c99-complex-ugly-hack.patch       =
                        |   14
 meta/recipes-devtools/gcc/gcc-4.5.1/304-index_macro.patch                 =
                        |   28
 meta/recipes-devtools/gcc/gcc-4.5.1/305-libmudflap-susv3-legacy.patch     =
                        |   49
 meta/recipes-devtools/gcc/gcc-4.5.1/306-libstdc++-namespace.patch         =
                        |   38
 meta/recipes-devtools/gcc/gcc-4.5.1/307-locale_facets.patch               =
                        |   19
 meta/recipes-devtools/gcc/gcc-4.5.1/602-sdk-libstdc++-includes.patch      =
                        |   20
 meta/recipes-devtools/gcc/gcc-4.5.1/64bithack.patch                       =
                        |   33
 meta/recipes-devtools/gcc/gcc-4.5.1/740-sh-pr24836.patch                  =
                        |   29
 meta/recipes-devtools/gcc/gcc-4.5.1/800-arm-bigendian.patch               =
                        |   34
 meta/recipes-devtools/gcc/gcc-4.5.1/904-flatten-switch-stmt-00.patch      =
                        |   74
 meta/recipes-devtools/gcc/gcc-4.5.1/arm-bswapsi2.patch                    =
                        |   13
 meta/recipes-devtools/gcc/gcc-4.5.1/arm-nolibfloat.patch                  =
                        |   24
 meta/recipes-devtools/gcc/gcc-4.5.1/arm-softfloat.patch                   =
                        |   16
 meta/recipes-devtools/gcc/gcc-4.5.1/arm-unbreak-eabi-armv4t.dpatch        =
                        |   36
 meta/recipes-devtools/gcc/gcc-4.5.1/cache-amnesia.patch                   =
                        |   31
 meta/recipes-devtools/gcc/gcc-4.5.1/disable_relax_pic_calls_flag.patch    =
                        |   44
 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-c++-builtin-redecl.patch =
                        |  114
 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-cpp-pragma.patch         =
                        |  284 +
 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-i386-libgomp.patch       =
                        |   65
 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-ia64-libunwind.patch     =
                        |  550 +
 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-java-debug-iface-type.pat=
ch                      |   19
 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-java-nomulti.patch       =
                        |   48
 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-libgomp-speedup.patch    =
                        | 2797 +++++++++
 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-ppc32-retaddr.patch      =
                        |   90
 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-pr27898.patch            =
                        |   16
 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-pr32139.patch            =
                        |   19
 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-pr33763.patch            =
                        |  159
 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-rh251682.patch           =
                        |   89
 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-rh330771.patch           =
                        |   31
 meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-rh341221.patch           =
                        |   32
 meta/recipes-devtools/gcc/gcc-4.5.1/fortran-cross-compile-hack.patch      =
                        |   30
 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.0.2-e300c2c3.patch              =
                        |  319 +
 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch =
                        |   31
 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.pa=
tch                     |  114
 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-arm-frename-registers.patch       =
                        |   25
 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-flags-for-build.patch             =
                        |  178
 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-ice-hack.dpatch                   =
                        |  331 +
 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-dir-extend.patch           =
                        |   24
 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-parameters.patch           =
                        |   83
 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-system-directories.patch   =
                        |  201
 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-uclibc-locale-ctype_touplow_t.patc=
h                       |   67
 meta/recipes-devtools/gcc/gcc-4.5.1/libstdc++-emit-__cxa_end_cleanup-in-te=
xt.patch                |   40
 meta/recipes-devtools/gcc/gcc-4.5.1/libstdc++-pic.dpatch                  =
                        |   71
 meta/recipes-devtools/gcc/gcc-4.5.1/optional_libstdc.patch                =
                        |   23
 meta/recipes-devtools/gcc/gcc-4.5.1/pr30961.dpatch                        =
                        |  179
 meta/recipes-devtools/gcc/gcc-4.5.1/pr35942.patch                         =
                        |   38
 meta/recipes-devtools/gcc/gcc-4.5.1/zecke-xgcc-cpp.patch                  =
                        |   28
 meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.0.bb                     =
                        |   25
 meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb                     =
                        |   25
 meta/recipes-devtools/gcc/gcc-cross-initial_4.5.0.bb                      =
                        |    5
 meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb                      =
                        |    5
 meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.0.bb                 =
                        |    4
 meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb                 =
                        |    4
 meta/recipes-devtools/gcc/gcc-cross_4.5.0.bb                              =
                        |   10
 meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb                              =
                        |   10
 meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.0.bb                   =
                        |    4
 meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb                   =
                        |    4
 meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.0.bb              =
                        |    4
 meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb              =
                        |    4
 meta/recipes-devtools/gcc/gcc-crosssdk_4.5.0.bb                           =
                        |    4
 meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb                           =
                        |    4
 meta/recipes-devtools/gcc/gcc-runtime_4.5.0.bb                            =
                        |   11
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb                            =
                        |   11
 meta/recipes-devtools/gcc/gcc_4.5.0.bb                                    =
                        |   10
 meta/recipes-devtools/gcc/gcc_4.5.1.bb                                    =
                        |   10
 meta/recipes-devtools/gdb/gdb-cross-canadian_7.1.bb                       =
                        |   10
 meta/recipes-devtools/gdb/gdb-cross-canadian_7.2.bb                       =
                        |   10
 meta/recipes-devtools/gdb/gdb-cross_7.1.bb                                =
                        |    6
 meta/recipes-devtools/gdb/gdb-cross_7.2.bb                                =
                        |    6
 meta/recipes-devtools/gdb/gdb.inc                                         =
                        |    3
 meta/recipes-devtools/gdb/gdb/fix_for_build_error_internal_error_call.patc=
h                       |   13
 meta/recipes-devtools/gdb/gdb_7.1.bb                                      =
                        |    3
 meta/recipes-devtools/gdb/gdb_7.2.bb                                      =
                        |    3
 meta/recipes-devtools/libtool/libtool-cross_2.2.10.bb                     =
                        |   34
 meta/recipes-devtools/libtool/libtool-cross_2.4.bb                        =
                        |   34
 meta/recipes-devtools/libtool/libtool-native_2.2.10.bb                    =
                        |   22
 meta/recipes-devtools/libtool/libtool-native_2.4.bb                       =
                        |   22
 meta/recipes-devtools/libtool/libtool-nativesdk_2.2.10.bb                 =
                        |   27
 meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb                    =
                        |   27
 meta/recipes-devtools/libtool/libtool/cross_compile.patch                 =
                        |   27
 meta/recipes-devtools/libtool/libtool/prefix.patch                        =
                        |   31
 meta/recipes-devtools/libtool/libtool_2.2.10.bb                           =
                        |   33
 meta/recipes-devtools/libtool/libtool_2.4.bb                              =
                        |   33
 meta/recipes-devtools/make/make_3.81.bb                                   =
                        |    3
 meta/recipes-devtools/make/make_3.82.bb                                   =
                        |    3
 meta/recipes-devtools/python/python-gst_0.10.18.bb                        =
                        |   18
 meta/recipes-devtools/python/python-gst_0.10.19.bb                        =
                        |   18
 meta/recipes-devtools/python/python-native-2.6.5/00-fix-bindir-libdir-for-=
cross.patch             |   20
 meta/recipes-devtools/python/python-native-2.6.5/04-default-is-optimized.p=
atch                    |   18
 meta/recipes-devtools/python/python-native-2.6.5/10-distutils-fix-swig-par=
ameter.patch            |   16
 meta/recipes-devtools/python/python-native-2.6.5/11-distutils-never-modify=
-shebang-line.patch     |   18
 meta/recipes-devtools/python/python-native-2.6.5/12-distutils-prefix-is-in=
side-staging-area.patch |   60
 meta/recipes-devtools/python/python-native-2.6.5/debug.patch              =
                        |   27
 meta/recipes-devtools/python/python-native-2.6.5/nohostlibs.patch         =
                        |   53
 meta/recipes-devtools/python/python-native-2.6.5/sitecustomize.py         =
                        |   45
 meta/recipes-devtools/python/python-native/04-default-is-optimized.patch  =
                        |   18
 meta/recipes-devtools/python/python-native/10-distutils-fix-swig-parameter=
.patch                  |   16
 meta/recipes-devtools/python/python-native/11-distutils-never-modify-sheba=
ng-line.patch           |   18
 meta/recipes-devtools/python/python-native/12-distutils-prefix-is-inside-s=
taging-area.patch       |   60
 meta/recipes-devtools/python/python-native/debug.patch                    =
                        |   27
 meta/recipes-devtools/python/python-native/nohostlibs.patch               =
                        |   53
 meta/recipes-devtools/python/python-native/sitecustomize.py               =
                        |   45
 meta/recipes-devtools/python/python-native_2.6.5.bb                       =
                        |   30
 meta/recipes-devtools/python/python-native_2.6.6.bb                       =
                        |   30
 meta/recipes-devtools/python/python-scons-native_1.3.0.bb                 =
                        |    6
 meta/recipes-devtools/python/python-scons-native_2.0.1.bb                 =
                        |    6
 meta/recipes-devtools/python/python-scons_1.3.0.bb                        =
                        |   12
 meta/recipes-devtools/python/python-scons_2.0.1.bb                        =
                        |   12
 meta/recipes-devtools/python/python/00-fix-bindir-libdir-for-cross.patch  =
                        |   20
 meta/recipes-devtools/python/python/01-use-proper-tools-for-cross-build.pa=
tch                     |   32
 meta/recipes-devtools/python/python/04-default-is-optimized.patch         =
                        |   28
 meta/recipes-devtools/python/python/06-avoid_usr_lib_termcap_path_in_linki=
ng.patch                |   14
 meta/recipes-devtools/python/python/99-ignore-optimization-flag.patch     =
                        |   20
 meta/recipes-devtools/python/python_2.6.5.bb                              =
                        |  124
 meta/recipes-devtools/python/python_2.6.6.bb                              =
                        |  122
 meta/recipes-devtools/tcltk/tcl/fix_non_native_build_issue.patch          =
                        |   63
 meta/recipes-devtools/tcltk/tcl_8.5.8.bb                                  =
                        |   63
 meta/recipes-devtools/tcltk/tcl_8.5.9.bb                                  =
                        |   62
 meta/recipes-extended/lsof/lsof_4.83.bb                                   =
                        |   41
 meta/recipes-extended/lsof/lsof_4.84.bb                                   =
                        |   41
 meta/recipes-kernel/linux-libc-headers/linux-libc-headers/hayes-gone.patch=
                        |   46
 meta/recipes-kernel/linux-libc-headers/linux-libc-headers/ppc_glibc_build_=
fix.patch               |   25
 meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.34.bb       =
                        |   49
 meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.36.bb       =
                        |   47
 meta/recipes-support/gmp/gmp-4.2.1/disable-stdc.patch                     =
                        |   31
 meta/recipes-support/gmp/gmp_4.2.1.bb                                     =
                        |   14
 219 files changed, 11736 insertions(+), 12240 deletions(-)

Nitin A Kamble (13):
      tcl: upgrade from 8.5.8 to 8.5.9
      autoconf: upgrade from 2.65 to 2.68
      gcc: upgrade from 4.5.0 to 4.5.1
      bison upgrade from 2.4.2. to 2.4.3
      Make upgrade from 3.81 to 3.82
      diffstat: upgrade from 1.47 to 1.54
      gdb upgrade from 7.1 to 7.2
      python-gst: upgrade from 0.10.18 to 0.10.19
      pythn, python-native upgrade from 2.6.5 to 2.6.6
      libtool upgrade from 2.2.10 to 2.4
      gmp: remove older version files
      lsof: upgrade from 4.83 to 4.84
      linux-libc-headers: upgrade from 2.6.34 to 2.6.36

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dnitin/upg=
rades

