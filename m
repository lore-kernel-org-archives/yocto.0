Return-Path: <james.woodyatt@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47B06E00B7C; Mon,  5 May 2014 16:07:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=5.0 tests=RCVD_IN_DNSWL_HI, URIBL_BLACK
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  1.7 URIBL_BLACK Contains an URL listed in the URIBL blacklist
	*      [URIs: configure.ac]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24B22E00B5D
	for <yocto@yoctoproject.org>; Mon,  5 May 2014 16:07:21 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 May 2014 16:02:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,992,1389772800"; d="scan'208";a="535131305"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by orsmga002.jf.intel.com with ESMTP; 05 May 2014 16:07:19 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 5 May 2014 16:07:19 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.80]) by
	ORSMSX156.amr.corp.intel.com ([169.254.8.176]) with mapi id
	14.03.0123.003; Mon, 5 May 2014 16:07:19 -0700
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: Yocto Project Main <yocto@yoctoproject.org>
Thread-Topic: [PATCH 1/1] dylan: fix kconfig-frontends for ncurses
	--with-libterm
Thread-Index: AQHPaLbDsW8cMeNtJ0C8sikX6BcbwQ==
Date: Mon, 5 May 2014 23:07:18 +0000
Message-ID: <1E0A4378-38DB-4043-A6AD-C07F6BDC7444@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.24.28]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: [PATCH 1/1] dylan: fix kconfig-frontends for ncurses --with-libterm
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
X-List-Received-Date: Mon, 05 May 2014 23:07:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <CE4DB424A7C4804A8D512CD0596B61DA@intel.com>
Content-Transfer-Encoding: quoted-printable

commit 939c9feca3c26d4603b573d887324d6220e93819
Author: james woodyatt <james.woodyatt@intel.com>
Date:   Mon May 5 15:54:29 2014 -0700

    kconfig-frontends-native: add support for --with-libterm.
   =20
    This is a cherry-pick of cefcd4b655c2b7efdc6313740f3c8af89dd8f670 from
    the kconfig-frontends project authoritative Git repository for a change
    that went into 3.9 and later revisions that enables building on hosts
    configurations where libncurses uses libtinfo.

diff --git a/oecore.patch b/oecore.patch
index 7371244..ec2fc8b 100644
--- a/oecore.patch
+++ b/oecore.patch
@@ -3272,3 +3272,38 @@ index 43a55a6..5553411 100644
  "
 =20
  SRC_URI[md5sum] =3D "3e379b4d8b9693948d751c154614c73e"
+diff --git a/meta/recipes-devtools/kconfig-frontends/files/kconfig-fronten=
ds-tinfo.patch b/meta/recipes-devtools/kconfig-frontends/files/kconfig-fron=
tends-tinfo.patch
+new file mode 100644
+index 0000000..1da643a
+--- /dev/null
++++ b/meta/recipes-devtools/kconfig-frontends/files/kconfig-frontends-tinf=
o.patch
+@@ -0,0 +1,14 @@
++diff --git a/configure.ac b/configure.ac
++index 8b5bc5d..e90fd17 100644
++--- a/configure.ac
+++++ b/configure.ac
++@@ -283,6 +283,10 @@ AS_IF(
++             [test "$need_curses" =3D "yes"],
++             [AC_MSG_ERROR([could not find curses library (frontends: mco=
nf/nconf)])],
++             [has_curses=3Dno])])
+++     AC_SEARCH_LIBS(
+++        [setupterm],
+++        [tinfo],
+++        [break])
++      ncurses_LIBS=3D"$LIBS"
++      LIBS=3D$LIBS_old])
+diff --git a/meta/recipes-devtools/kconfig-frontends/kconfig-frontends_3.8=
.0.bb b/meta/recipes-devtools/kconfig-frontends/kconfig-frontends_3.8.0.bb
+index b9960f9..a1e7572 100644
+--- a/meta/recipes-devtools/kconfig-frontends/kconfig-frontends_3.8.0.bb
++++ b/meta/recipes-devtools/kconfig-frontends/kconfig-frontends_3.8.0.bb
+@@ -13,7 +13,9 @@ SECTION =3D "devel"
+ DEPENDS +=3D "ncurses flex bison gperf pkgconfig-native"
+ PR =3D "r0"
+ SPIN =3D ".0"
+-SRC_URI =3D "http://ymorin.is-a-geek.org/download/${BPN}/${BPN}-${PV}${SP=
IN}.tar.xz"
++SRC_URI =3D "http://ymorin.is-a-geek.org/download/${BPN}/${BPN}-${PV}${SP=
IN}.tar.xz \
++	   file://kconfig-frontends-tinfo.patch \
++"
+=20
+ SRC_URI[md5sum] =3D "73598aea99d01d9c422b335e9b963271"
+ SRC_URI[sha256sum] =3D "b3ff325338aa291c9129dbf33c69ff321e30105aa06ff957b=
e6f958acdc72b42"


=97
james woodyatt <james.woodyatt@intel.com>
Software Architect, New Devices Group


