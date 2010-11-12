Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 205324C8108C
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 11:05:44 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Nov 2010 09:05:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,188,1288594800"; d="scan'208";a="626167526"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 12 Nov 2010 09:05:43 -0800
Received: from orsmsx001.amr.corp.intel.com ([10.22.226.42]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi;
	Fri, 12 Nov 2010 09:05:43 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>, "Wold, Saul"
	<saul.wold@intel.com>
Date: Fri, 12 Nov 2010 09:05:08 -0800
Thread-Topic: [PULL] devel/toolchain Recipes upgrades
Thread-Index: Act/ofe1eQOsEeV5SPeW8L1w6Tv6NgABSpbQALj4SNA=
Message-ID: <731F6F755F547148839CA39AD8282CE3FACD2C@orsmsx001.amr.corp.intel.com>
References: <8EA2C2C4116BF44AB370468FBF85A77701BC9526F4@orsmsx504.amr.corp.intel.com>
	<4CD8907D.9050005@intel.com>
	<8EA2C2C4116BF44AB370468FBF85A77701BCA380ED@orsmsx504.amr.corp.intel.com>
In-Reply-To: <8EA2C2C4116BF44AB370468FBF85A77701BCA380ED@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Richard Purdie <richard@openedhand.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PULL] devel/toolchain Recipes upgrades
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
X-List-Received-Date: Fri, 12 Nov 2010 17:05:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Saul,=20
  This is the updated pull request. I have taken out gcc, autoconf & libtoo=
l commits now, and I am able to build poky-sdk images on all architectures =
and also run commands inside qemu machines. I also updated the distro track=
ing fields of all recipes for which I am owner.

   BTW I saw some strange rpm errors while including all the commits, and w=
ill look into further now.

Thanks & Regards,
Nitin

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dnitin/upg=
rades


 meta/conf/distro/include/distro_tracking_fields.inc                       =
                        |  240 ++--------
 meta/conf/distro/include/poky-default-revisions.inc                       =
                        |    2
 meta/recipes-core/eglibc/cross-localedef-native_2.12.bb                   =
                        |    4
 meta/recipes-core/eglibc/eglibc_2.12.bb                                   =
                        |    2
 meta/recipes-devtools/bison/bison_2.4.2.bb                                =
                        |   22
 meta/recipes-devtools/bison/bison_2.4.3.bb                                =
                        |   22
 meta/recipes-devtools/diffstat/diffstat_1.47.bb                           =
                        |   26 -
 meta/recipes-devtools/diffstat/diffstat_1.54.bb                           =
                        |   22
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
side-staging-area.patch |   60 --
 meta/recipes-devtools/python/python-native-2.6.5/debug.patch              =
                        |   27 -
 meta/recipes-devtools/python/python-native-2.6.5/nohostlibs.patch         =
                        |   53 --
 meta/recipes-devtools/python/python-native-2.6.5/sitecustomize.py         =
                        |   45 -
 meta/recipes-devtools/python/python-native/04-default-is-optimized.patch  =
                        |   18
 meta/recipes-devtools/python/python-native/10-distutils-fix-swig-parameter=
.patch                  |   16
 meta/recipes-devtools/python/python-native/11-distutils-never-modify-sheba=
ng-line.patch           |   18
 meta/recipes-devtools/python/python-native/12-distutils-prefix-is-inside-s=
taging-area.patch       |   60 ++
 meta/recipes-devtools/python/python-native/debug.patch                    =
                        |   27 +
 meta/recipes-devtools/python/python-native/nohostlibs.patch               =
                        |   53 ++
 meta/recipes-devtools/python/python-native/sitecustomize.py               =
                        |   45 +
 meta/recipes-devtools/python/python-native_2.6.5.bb                       =
                        |   30 -
 meta/recipes-devtools/python/python-native_2.6.6.bb                       =
                        |   30 +
 meta/recipes-devtools/python/python/00-fix-bindir-libdir-for-cross.patch  =
                        |   20
 meta/recipes-devtools/python/python/01-use-proper-tools-for-cross-build.pa=
tch                     |   32 -
 meta/recipes-devtools/python/python/04-default-is-optimized.patch         =
                        |   28 -
 meta/recipes-devtools/python/python/06-avoid_usr_lib_termcap_path_in_linki=
ng.patch                |   14
 meta/recipes-devtools/python/python/99-ignore-optimization-flag.patch     =
                        |   20
 meta/recipes-devtools/python/python_2.6.5.bb                              =
                        |  124 -----
 meta/recipes-devtools/python/python_2.6.6.bb                              =
                        |  122 +++++
 meta/recipes-devtools/tcltk/tcl/fix_non_native_build_issue.patch          =
                        |   63 --
 meta/recipes-devtools/tcltk/tcl_8.5.8.bb                                  =
                        |   63 --
 meta/recipes-devtools/tcltk/tcl_8.5.9.bb                                  =
                        |   62 ++
 meta/recipes-extended/lsof/lsof_4.83.bb                                   =
                        |   41 -
 meta/recipes-extended/lsof/lsof_4.84.bb                                   =
                        |   41 +
 meta/recipes-kernel/linux-libc-headers/linux-libc-headers/hayes-gone.patch=
                        |   46 -
 meta/recipes-kernel/linux-libc-headers/linux-libc-headers/ppc_glibc_build_=
fix.patch               |   25 -
 meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.34.bb       =
                        |   49 --
 meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.36.bb       =
                        |   47 +
 meta/recipes-support/gmp/gmp-4.2.1/disable-stdc.patch                     =
                        |   31 -
 meta/recipes-support/gmp/gmp_4.2.1.bb                                     =
                        |   14
 55 files changed, 749 insertions(+), 1083 deletions(-)

Nitin A Kamble (12):
      tcl: upgrade from 8.5.8 to 8.5.9
      bison upgrade from 2.4.2. to 2.4.3
      Make upgrade from 3.81 to 3.82
      diffstat: upgrade from 1.47 to 1.54
      gdb upgrade from 7.1 to 7.2
      python-gst: upgrade from 0.10.18 to 0.10.19
      pythn, python-native upgrade from 2.6.5 to 2.6.6
      gmp: remove older version files
      lsof: upgrade from 4.83 to 4.84
      linux-libc-headers: upgrade from 2.6.34 to 2.6.36
      eglibc: update svn checkout commit
      distro_tracking: update as per current state of devel/toolchain recip=
es

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dnitin/upg=
rades

