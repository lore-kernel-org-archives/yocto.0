Return-Path: <christian@poessinger.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84274E00CDF; Mon, 29 Feb 2016 09:25:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Mon, 29 Feb 2016 09:25:51 PST
Received: from HE.hosted.gefoekom.de (he.hosted.gefoekom.de [194.145.150.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5D52E00833
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 09:25:51 -0800 (PST)
Received: from HE.hosted.gefoekom.de ([fe80::bd33:552d:44e3:3bad]) by
	HE.hosted.gefoekom.de ([fe80::bd33:552d:44e3:3bad%14]) with mapi id
	14.03.0266.001; Mon, 29 Feb 2016 18:24:37 +0100
From: =?iso-8859-1?Q?Christian_P=F6ssinger?= <christian@poessinger.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-mingw][PATCH] Renamed version specific bbappend of mpfr,
	binutils-cross-canadian,
	gdb-cross-canadian and libmpc to wildcard bbappend files.
Thread-Index: AdFzFfBLBU9qOSQaSiKQkrnDO5YO2A==
Date: Mon, 29 Feb 2016 17:24:36 +0000
Message-ID: <4D72230CAA2B6B47B89730E2006D198364C54B7B@HE.hosted.gefoekom.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.193.141.63]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 02 Mar 2016 08:00:41 -0800
Subject: [meta-mingw][PATCH] Renamed version specific bbappend of mpfr, binutils-cross-canadian, gdb-cross-canadian and libmpc to wildcard bbappend files.
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
X-List-Received-Date: Mon, 29 Feb 2016 17:25:56 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Renamed version specific bbappend of mpfr, binutils-cross-canadian, gdb-cro=
ss-canadian and libmpc to wildcard bbappend files.

Signed-off-by: Christian Poessinger <christian at poessinger.com>

---
 recipes-devtools/binutils/binutils-cross-canadian_%.bbappend     | 5 +++++
 recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend | 5 -----
 recipes-devtools/gdb/gdb-cross-canadian_%.bbappend               | 5 +++++
 recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend           | 5 -----
 recipes-support/libmpc/libmpc_%.bbappend                         | 1 +
 recipes-support/libmpc/libmpc_1.0.3.bbappend                     | 1 -
 recipes-support/mpfr/mpfr_%.bbappend                             | 1 +
 recipes-support/mpfr/mpfr_3.1.3.bbappend                         | 1 -
 8 files changed, 12 insertions(+), 12 deletions(-)
 create mode 100644 recipes-devtools/binutils/binutils-cross-canadian_%.bba=
ppend
 delete mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.25%=
.bbappend
 create mode 100644 recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
 delete mode 100644 recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend
 create mode 100644 recipes-support/libmpc/libmpc_%.bbappend
 delete mode 100644 recipes-support/libmpc/libmpc_1.0.3.bbappend
 create mode 100644 recipes-support/mpfr/mpfr_%.bbappend
 delete mode 100644 recipes-support/mpfr/mpfr_3.1.3.bbappend

diff --git a/recipes-devtools/binutils/binutils-cross-canadian_%.bbappend b=
/recipes-devtools/binutils/binutils-cross-canadian_%.bbappend
new file mode 100644
index 0000000..026c932
--- /dev/null
+++ b/recipes-devtools/binutils/binutils-cross-canadian_%.bbappend
@@ -0,0 +1,5 @@
+EXTRA_OECONF_append_sdkmingw32 =3D " --disable-plugins --disable-nls"
+LDFLAGS_append_sdkmingw32 =3D " -Wl,-static"
+
+DEPENDS_remove_sdkmingw32 =3D "nativesdk-gettext"
+DEPENDS_remove_sdkmingw32 =3D "nativesdk-flex"
diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappe=
nd b/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
deleted file mode 100644
index 026c932..0000000
--- a/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-EXTRA_OECONF_append_sdkmingw32 =3D " --disable-plugins --disable-nls"
-LDFLAGS_append_sdkmingw32 =3D " -Wl,-static"
-
-DEPENDS_remove_sdkmingw32 =3D "nativesdk-gettext"
-DEPENDS_remove_sdkmingw32 =3D "nativesdk-flex"
diff --git a/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend b/recipes-d=
evtools/gdb/gdb-cross-canadian_%.bbappend
new file mode 100644
index 0000000..bf4bd75
--- /dev/null
+++ b/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
@@ -0,0 +1,5 @@
+LDFLAGS_append_sdkmingw32 =3D " -Wl,-static"
+EXEEXT_sdkmingw32 =3D ".exe"
+DEPENDS_remove_sdkmingw32 =3D "nativesdk-ncurses nativesdk-readline native=
sdk-python"
+RDEPENDS_${PN}_remove_sdkmingw32 =3D "nativesdk-python-core nativesdk-pyth=
on-lang nativesdk-python-re nativesdk-python-codecs nativesdk-python-netcli=
ent"
+EXTRA_OECONF_append_sdkmingw32 =3D "--without-curses --without-system-read=
line --with-python=3Dno"
diff --git a/recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend b/recip=
es-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend
deleted file mode 100644
index bf4bd75..0000000
--- a/recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-LDFLAGS_append_sdkmingw32 =3D " -Wl,-static"
-EXEEXT_sdkmingw32 =3D ".exe"
-DEPENDS_remove_sdkmingw32 =3D "nativesdk-ncurses nativesdk-readline native=
sdk-python"
-RDEPENDS_${PN}_remove_sdkmingw32 =3D "nativesdk-python-core nativesdk-pyth=
on-lang nativesdk-python-re nativesdk-python-codecs nativesdk-python-netcli=
ent"
-EXTRA_OECONF_append_sdkmingw32 =3D "--without-curses --without-system-read=
line --with-python=3Dno"
diff --git a/recipes-support/libmpc/libmpc_%.bbappend b/recipes-support/lib=
mpc/libmpc_%.bbappend
new file mode 100644
index 0000000..0d289df
--- /dev/null
+++ b/recipes-support/libmpc/libmpc_%.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF_append_mingw32 =3D "--enable-static --disable-shared"
\ No newline at end of file
diff --git a/recipes-support/libmpc/libmpc_1.0.3.bbappend b/recipes-support=
/libmpc/libmpc_1.0.3.bbappend
deleted file mode 100644
index 0d289df..0000000
--- a/recipes-support/libmpc/libmpc_1.0.3.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-EXTRA_OECONF_append_mingw32 =3D "--enable-static --disable-shared"
\ No newline at end of file
diff --git a/recipes-support/mpfr/mpfr_%.bbappend b/recipes-support/mpfr/mp=
fr_%.bbappend
new file mode 100644
index 0000000..4252e8d
--- /dev/null
+++ b/recipes-support/mpfr/mpfr_%.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF_append_mingw32 =3D " --disable-shared"
\ No newline at end of file
diff --git a/recipes-support/mpfr/mpfr_3.1.3.bbappend b/recipes-support/mpf=
r/mpfr_3.1.3.bbappend
deleted file mode 100644
index 4252e8d..0000000
--- a/recipes-support/mpfr/mpfr_3.1.3.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-EXTRA_OECONF_append_mingw32 =3D " --disable-shared"
\ No newline at end of file
--
2.7.2


