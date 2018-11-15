Return-Path: <samuli.piippo@qt.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 937D7E0095C; Thu, 15 Nov 2018 08:03:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.4.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 11344 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Nov 2018 08:03:47 PST
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
	(mail-eopbgr40135.outbound.protection.outlook.com [40.107.4.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FA32E008D7
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 08:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=qtcompany.onmicrosoft.com; s=selector1-qt-io;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=BMPNef7KVol7ETK8UwSlTDo2XFd4yXw/ry/hEirvqDI=;
	b=dGaNZbDI9FRO+cYW7mm2c04ZTXtCDtFgeiNT80u3WiJiS8RLTl68Fj3IV3C0UDkIxBI1phlE+LwJGQMwa/KBEzszCtjv52oNK3SwMz1IG7VlsVpQIFMMcYZV5GSrRQgeAp/IukRhHjQldoheyCwKf5K7t295KGrOtiX7z+ov7b8=
Received: from HE1PR0201MB2265.eurprd02.prod.outlook.com (10.168.145.136) by
	HE1PR0201MB2217.eurprd02.prod.outlook.com (10.168.31.6) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.25; Thu, 15 Nov 2018 09:28:52 +0000
Received: from HE1PR0201MB2265.eurprd02.prod.outlook.com
	([fe80::e588:a17c:cfbc:83f9]) by
	HE1PR0201MB2265.eurprd02.prod.outlook.com
	([fe80::e588:a17c:cfbc:83f9%6]) with mapi id 15.20.1294.045;
	Thu, 15 Nov 2018 09:28:52 +0000
From: Samuli Piippo <samuli.piippo@qt.io>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-mingw][PATCH 1/2] winpthreads: use posix threads library
	from mingw64
Thread-Index: AQHUfMWfo4EEInMzi0ud1wCRvP7GTg==
Date: Thu, 15 Nov 2018 09:28:52 +0000
Message-ID: <20181115092658.29152-1-samuli.piippo@qt.io>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.89.120.53]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: AM6P192CA0077.EURP192.PROD.OUTLOOK.COM
	(2603:10a6:209:8d::18) To HE1PR0201MB2265.eurprd02.prod.outlook.com
	(2603:10a6:3:7f::8)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=samuli.piippo@qt.io; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0201MB2217;
	6:2ZnWlyvPFzReC2WYK3SEWoGmHfnBV6jwB9/fdFnjqlr5q8zJMOlqlbWl6KVCEBMTIgpLHuvJOifjlh6rTAdIjAttjxV6o/t//OdUGyKxzBb7ifUWqUH/G29QX+xauxYFkT+vQ8Ak9//8UmwXPvid/oME9ebUfQPgd/2s7/8Rkf81+WxbsxEI+2bBqTLj1gRW+8oSJX7GEPeIWbA0rMeSWhNk17kqXBQ0GFEPOHIh0oaL4C3R+RRXXZu5enG6bqVikG57BasYMfl6t7SYtVyZcD9tbH+Abl1iq57+QGFj7J1EWHvv802eCewGieTlmMMcFtyU94d+GlzBNKayxrNkK3XXLwO8RE4W9YxyLH6S0Z5PS/CC0vvsI30cBlGdyHguAJDdlT30UxQ7kJemBcsksRCCy+sgv9aq6UoIUZTP1LDAKCJEFyYTXtqgDyBpAfhY34bCWsmUH73JBiy/iju1VA==;
	5:86YhdNPjWN2lHATRdfcUo7kvk7pgccQnXiR2lYLmu+44RSSAERu39y1Be5/M0f8GSDN5m1RaaJrAZ595LlUxTqRLIRmHwy6kiwJ5vKQxCgvL94a5VMasdj5MnMwGlRaECwpIYPtwag0aFzw4uxWFZjCK9QFrPJYZ5/c2weEKi08=;
	7:PSKzd9dVLivclRRQRfJPFhSs1VY4yKMyNfIymZZapkjEuOf4qxyfCswTl1DjFnzU8aErbgdtNpII0GDluHoHff+/nwSWL6CRYLkREr3BsIIYtNeDGxm2fS08NOUF2t8vys9k3UGeHwQs+P8qkJip8A==
x-ms-office365-filtering-correlation-id: e4e71f16-1634-4ac0-4b5f-08d64adcc1c5
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(4652040)(8989299)(5600074)(711020)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:HE1PR0201MB2217; 
x-ms-traffictypediagnostic: HE1PR0201MB2217:
x-microsoft-antispam-prvs: <HE1PR0201MB2217DAE5845F2ABFAE8070BBE9DC0@HE1PR0201MB2217.eurprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(788757137089);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(3231415)(944501410)(4982022)(52105112)(148016)(149066)(150057)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123560045)(20161123562045)(20161123564045)(201708071742011)(7699051)(76991095);
	SRVR:HE1PR0201MB2217; BCL:0; PCL:0; RULEID:;
	SRVR:HE1PR0201MB2217; 
x-forefront-prvs: 08572BD77F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(346002)(366004)(396003)(376002)(39850400004)(136003)(189003)(199004)(66066001)(316002)(68736007)(71190400001)(71200400001)(186003)(1857600001)(36756003)(26005)(966005)(1730700003)(305945005)(476003)(2906002)(81156014)(8676002)(81166006)(2616005)(8936002)(6116002)(3846002)(486006)(1076002)(256004)(6916009)(14444005)(6486002)(2501003)(44832011)(50226002)(7736002)(386003)(14454004)(52116002)(5660300001)(33896004)(99286004)(2900100001)(74482002)(575784001)(86362001)(102836004)(6506007)(105586002)(106356001)(25786009)(2351001)(4326008)(6306002)(6512007)(6436002)(5640700003)(97736004)(53376002)(478600001)(53936002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0201MB2217;
	H:HE1PR0201MB2265.eurprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: qt.io does not designate permitted
	sender hosts)
x-microsoft-antispam-message-info: VjPJy4EUezOX3DBfMbcmLzg0UjN8ThLos7jnLBVBAFvTdkXMLMoWmPi+CHRuJ948OgKdnp7NnKVXj+0Tnlj/l7Qap3TN6CnCOgZeHZJ+vf6bSOIPMITfrvP3TnqCmMoa1hSpKrJNKx/ZtCqT2knPV7fyjI61YW45Yl43qpaqIldChot5UC9Q/eoyJqxwf2R2vVXsQB9zRYiTYh9WBpfZK7sI6LoJPPlWDEjvCDuMM8/row3TiteZxMTXKmT1mHf9lhjmPjhhupfLRALm4ZXpudhxbceq+T9xYxCEcUrMFBc4YAH8GbqHnDSdwBaaTOXrAeb3EHm1HKKP6i5Y0inCpE+vW5eYIfwMG0YPCjEXZPs=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: qt.io
X-MS-Exchange-CrossTenant-Network-Message-Id: e4e71f16-1634-4ac0-4b5f-08d64adcc1c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2018 09:28:52.5728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 20d0b167-794d-448a-9d01-aaeccc1124ac
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0201MB2217
Subject: [meta-mingw][PATCH 1/2] winpthreads: use posix threads library from mingw64
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
X-List-Received-Date: Thu, 15 Nov 2018 16:03:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Use the winpthreads library available in the mingw64 and
change the thread model from win32 to posix to get access
to c++11 features.

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 conf/machine-sdk/include/mingw32-common.inc   |  2 -
 recipes-core/gettext/gettext_0.19.%.bbappend  |  5 +-
 recipes-devtools/gcc/gcc-runtime_%.bbappend   |  2 +-
 recipes-devtools/gcc/libgcc_%.bbappend        |  2 +
 .../nativesdk-mingw-w64-headers_5.0.3.bb      |  5 ++
 .../nativesdk-mingw-w64-winpthreads_5.0.3.bb  | 31 ++++++++++++
 .../pthreads-win32/pthreads-win32_2.9.1.bb    | 47 -------------------
 7 files changed, 40 insertions(+), 54 deletions(-)
 create mode 100644 recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthre=
ads_5.0.3.bb
 delete mode 100644 recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk=
/include/mingw32-common.inc
index cd56380..733d092 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -1,8 +1,6 @@
 SDK_OS =3D "mingw32"
 NATIVESDKLIBC =3D "libc-mingw"
=20
-GCCTHREADS_mingw32 =3D "win32"
-
 PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32 =3D=
 "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial_mingw32 =3D=
 "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libc =3D "nativesdk-mingw-w64-runtime=
"
diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend b/recipes-core/ge=
ttext/gettext_0.19.%.bbappend
index b26b734..21749f3 100644
--- a/recipes-core/gettext/gettext_0.19.%.bbappend
+++ b/recipes-core/gettext/gettext_0.19.%.bbappend
@@ -1,7 +1,4 @@
-DEPENDS_append_mingw32 =3D " pthreads-win32"
-LDFLAGS_prepend_mingw32 =3D " -lpthread "
-
-EXTRA_OECONF_append_mingw32 =3D " --enable-threads=3Dwindows --enable-stat=
ic"
+EXTRA_OECONF_append_mingw32 =3D " --enable-static"
=20
 FILESEXTRAPATHS_prepend_mingw32 :=3D "${THISDIR}/${BPN}:"
 SRC_URI_append_mingw32 =3D " \
diff --git a/recipes-devtools/gcc/gcc-runtime_%.bbappend b/recipes-devtools=
/gcc/gcc-runtime_%.bbappend
index 1641cb9..f14edf1 100644
--- a/recipes-devtools/gcc/gcc-runtime_%.bbappend
+++ b/recipes-devtools/gcc/gcc-runtime_%.bbappend
@@ -11,4 +11,4 @@ RUNTIMETARGET_remove_mingw32 =3D "libitm"
 # mingw builds
 RUNTIMETARGET_remove_mingw32 =3D "libmpx"
=20
-DEPENDS_append_mingw32 =3D " pthreads-win32"
+DEPENDS_append_mingw32 =3D " nativesdk-mingw-w64-winpthreads"
diff --git a/recipes-devtools/gcc/libgcc_%.bbappend b/recipes-devtools/gcc/=
libgcc_%.bbappend
index 2a95d02..f542cfc 100644
--- a/recipes-devtools/gcc/libgcc_%.bbappend
+++ b/recipes-devtools/gcc/libgcc_%.bbappend
@@ -1,3 +1,5 @@
+DEPENDS_append_mingw32 =3D " nativesdk-mingw-w64-winpthreads"
+
 FILES_${PN}_append_mingw32 =3D " ${bindir}/libgcc*.dll"
 FILES_${PN}-dev_append_mingw32 =3D " ${base_libdir}/libgcc*.a"
=20
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.b=
b b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
index e129c32..009e5af 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
@@ -31,4 +31,9 @@ do_compile() {
 	:
 }
=20
+do_install_append() {
+    # install correct pthread headers
+    install -m 0644 -t ${D}${includedir} ${S}/../mingw-w64-libraries/winpt=
hreads/include/*.h
+}
+
 FILES_${PN} +=3D "${exec_prefix}/${TARGET_SYS}"
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_5.0=
.3.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_5.0.3.bb
new file mode 100644
index 0000000..1308760
--- /dev/null
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_5.0.3.bb
@@ -0,0 +1,31 @@
+DESCRIPTION =3D "Winpthreads runtime libraries from MinGW-w64 project"
+LICENSE =3D "ZPL-2.1"
+LIC_FILES_CHKSUM =3D "file://../../COPYING;md5=3Dbb936f0e04d8f1e19ad545100=
cee9654"
+
+COMPATIBLE_HOST =3D ".*-mingw.*"
+
+SRC_URI =3D "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-r=
elease/mingw-w64-v${PV}.tar.bz2"
+SRC_URI[md5sum] =3D "5524c20312560cc8683b7d8ee292cb8c"
+SRC_URI[sha256sum] =3D "2a601db99ef579b9be69c775218ad956a24a09d7dabc9ff6c5=
bd60da9ccc9cb4"
+
+S =3D "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-libraries/winpthreads"
+B =3D "${WORKDIR}/build-${TARGET_SYS}"
+
+inherit autotools nativesdk
+
+INHIBIT_DEFAULT_DEPS =3D "1"
+DEPENDS =3D "nativesdk-mingw-w64-runtime virtual/${TARGET_PREFIX}gcc-initi=
al"
+
+do_configure() {
+    oe_runconf
+}
+
+STAGINGCC =3D "gcc-cross-initial-${TARGET_ARCH}"
+STAGINGCC_class-nativesdk =3D "gcc-crosssdk-initial-${SDK_SYS}"
+TOOLCHAIN_OPTIONS =3D " --sysroot=3D${STAGING_DIR_TARGET}"
+PATH_prepend =3D "${STAGING_BINDIR_TOOLCHAIN}.${STAGINGCC}:"
+
+do_install_append() {
+    # headers are already installed by mingw-w64-headers
+    rm -rf ${D}${includedir}
+}
diff --git a/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb b/reci=
pes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb
deleted file mode 100644
index e4a0f80..0000000
--- a/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb
+++ /dev/null
@@ -1,47 +0,0 @@
-DESCRIPTION =3D "A Win32 implementation of the POSIX standard threads API"
-HOMEPAGE =3D "http://www.sourceware.org/pthreads-win32"
-LICENSE =3D "LGPLv2.1"
-LIC_FILES_CHKSUM =3D "file://COPYING.LIB;md5=3D7fbc338309ac38fefcd64b04bb9=
03e34"
-
-BBCLASSEXTEND =3D "nativesdk"
-
-COMPATIBLE_HOST =3D ".*-mingw.*"
-
-## Replace dots with dashes
-PVdash =3D "2-9-1"
-
-## cvs -d :pserver:anonymous@sourceware.org:/cvs/pthreads-win32 checkout p=
threads
-SRC_URI =3D "ftp://sourceware.org/pub/pthreads-win32/pthreads-w32-${PVdash=
}-release.tar.gz"
-SRC_URI[md5sum] =3D "36ba827d6aa0fa9f9ae740a35626e2e3"
-SRC_URI[sha256sum] =3D "e6aca7aea8de33d9c8580bcb3a0ea3ec0a7ace4ba3f4e263ac=
7c7b66bc95fb4d"
-
-## Reference: http://sourceware.org/ml/pthreads-win32/2009/msg00030/w64sup=
.patch
-#SRC_URI +=3D "file://w64sup.patch"
-
-S =3D "${WORKDIR}/pthreads-w32-${PVdash}-release"
-
-INHIBIT_DEFAULT_DEPS =3D "1"
-DEPENDS =3D "virtual/${SDK_PREFIX}gcc libgcc virtual/libc"
-
-do_configure_prepend() {
-    ## First reset all permissions because all are executable
-    find . -type f -exec chmod 644 {} \;
-    ## Make a copy of config.h
-    cp config.h pthreads_win32_config.h
-}
-
-do_compile() {
-    make -f GNUmakefile CROSS=3D${SDK_PREFIX} CC=3D"${CC}" RC=3D"${WINDRES=
}" clean GC
-}
-
-do_install() {
-    install -d -m 0755 ${D}${bindir}
-    install -d -m 0755 ${D}${includedir}
-    install -d -m 0755 ${D}${libdir}
-
-    install -m 0644 ${S}/pthread.h ${S}/sched.h ${S}/semaphore.h ${D}${inc=
ludedir}/
-
-    install -m 0644 ${S}/libpthreadGC2.a ${D}${libdir}/libpthread.dll.a
-    install -m 0644 ${S}/pthreadGC2.dll ${D}${bindir}/libpthread-2.dll
-    install -m 0644 ${S}/pthreadGC2.dll ${D}${bindir}/pthreadGC2.dll
-}
--=20
2.17.1


