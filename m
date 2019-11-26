Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.5011.1574728775587413808
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 16:39:35 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: linux.intel.com, ip: 140.211.169.56, mailfrom: paul.eggleton@linux.intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23C7AE00E5C; Mon, 25 Nov 2019 16:39:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/, high
	*      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62BDDE00D4F
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 16:39:33 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Nov 2019 16:39:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,243,1571727600"; 
   d="scan'208";a="206449452"
Received: from jiahchun-mobl.gar.corp.intel.com (HELO shodan.fritz.box) ([10.255.172.229])
  by fmsmga007.fm.intel.com with ESMTP; 25 Nov 2019 16:39:29 -0800
From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Subject: [meta-qt4][PATCH] qt4: fix SRC_URI to point to archive
Date: Tue, 26 Nov 2019 13:39:25 +1300
Message-Id: <20191126003925.17763-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Qt4 is in the archive directory upstream so change SRC_URI and
UPSTREAM_CHECK_URI to avoid warnings.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-qt4/qt4/nativesdk-qt4-tools.inc | 4 ++--
 recipes-qt4/qt4/qt4-4.8.7.inc           | 4 ++--
 recipes-qt4/qt4/qt4-native.inc          | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/recipes-qt4/qt4/nativesdk-qt4-tools.inc b/recipes-qt4/qt4/na=
tivesdk-qt4-tools.inc
index f071b22..f067724 100644
--- a/recipes-qt4/qt4/nativesdk-qt4-tools.inc
+++ b/recipes-qt4/qt4/nativesdk-qt4-tools.inc
@@ -12,7 +12,7 @@ inherit nativesdk qmake2
 # so we need to avoid disabling them.
 DISABLE_STATIC =3D ""
=20
-SRC_URI =3D "http://download.qt-project.org/official_releases/qt/4.8/${P=
V}/qt-everywhere-opensource-src-${PV}.tar.gz \
+SRC_URI =3D "http://download.qt-project.org/archive/qt/4.8/${PV}/qt-ever=
ywhere-opensource-src-${PV}.tar.gz \
            file://0001-qlibraryinfo-allow-to-set-qt.conf-from-the-outsid=
e-u.patch \
            file://0004-configure-qmake-is-already-built-in-qt4-tools-nat=
ive.patch \
            file://0005-configure-set-LFLAGS-to-pick-up-zlib-from-staging=
.patch \
@@ -24,7 +24,7 @@ SRC_URI =3D "http://download.qt-project.org/official_re=
leases/qt/4.8/${PV}/qt-ever
            file://g++.conf \
            file://linux.conf"
=20
-UPSTREAM_CHECK_URI =3D "http://download.qt.io/official_releases/qt/4.8/"
+UPSTREAM_CHECK_URI =3D "http://download.qt.io/archive/qt/4.8/"
 UPSTREAM_CHECK_REGEX =3D "(?P<pver>\d+(\.\d+)+)/"
=20
 S =3D "${WORKDIR}/qt-everywhere-opensource-src-${PV}"
diff --git a/recipes-qt4/qt4/qt4-4.8.7.inc b/recipes-qt4/qt4/qt4-4.8.7.in=
c
index 1b52d6d..dfd681c 100644
--- a/recipes-qt4/qt4/qt4-4.8.7.inc
+++ b/recipes-qt4/qt4/qt4-4.8.7.inc
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM =3D "file://LICENSE.LGPL;md5=3Dfbc093901=
857fcd118f065f900982c24 \
=20
 FILESEXTRAPATHS =3D. "${FILE_DIRNAME}/qt4-${PV}:"
=20
-SRC_URI =3D "http://download.qt-project.org/official_releases/qt/4.8/${P=
V}/qt-everywhere-opensource-src-${PV}.tar.gz \
+SRC_URI =3D "http://download.qt-project.org/archive/qt/4.8/${PV}/qt-ever=
ywhere-opensource-src-${PV}.tar.gz \
            file://0003-webkit2-set-OUTPUT_DIR-value-if-empty.patch \
            file://0004-configure-qmake-is-already-built-in-qt4-tools-nat=
ive.patch \
            file://0008-qmake.pro-Allow-building-a-separate-qmake-for-the=
-ta.patch \
@@ -43,7 +43,7 @@ SRC_URI =3D "http://download.qt-project.org/official_re=
leases/qt/4.8/${PV}/qt-ever
 SRC_URI[md5sum] =3D "d990ee66bf7ab0c785589776f35ba6ad"
 SRC_URI[sha256sum] =3D "e2882295097e47fe089f8ac741a95fef47e0a73a3f3cdf21=
b56990638f626ea0"
=20
-UPSTREAM_CHECK_URI =3D "http://download.qt.io/official_releases/qt/4.8/"
+UPSTREAM_CHECK_URI =3D "http://download.qt.io/archive/qt/4.8/"
 UPSTREAM_CHECK_REGEX =3D "(?P<pver>\d+(\.\d+)+)/"
=20
 S =3D "${WORKDIR}/qt-everywhere-opensource-src-${PV}"
diff --git a/recipes-qt4/qt4/qt4-native.inc b/recipes-qt4/qt4/qt4-native.=
inc
index 8a964c6..2f4a484 100644
--- a/recipes-qt4/qt4/qt4-native.inc
+++ b/recipes-qt4/qt4/qt4-native.inc
@@ -11,7 +11,7 @@ LIC_FILES_CHKSUM =3D "file://LICENSE.LGPL;md5=3Dfbc0939=
01857fcd118f065f900982c24 \
=20
 inherit native
=20
-SRC_URI =3D "http://download.qt-project.org/official_releases/qt/4.8/${P=
V}/qt-everywhere-opensource-src-${PV}.tar.gz \
+SRC_URI =3D "http://download.qt-project.org/archive/qt/4.8/${PV}/qt-ever=
ywhere-opensource-src-${PV}.tar.gz \
            file://0001-qlibraryinfo-allow-to-set-qt.conf-from-the-outsid=
e-u.patch \
            file://0002-qkbdtty_qws-fix-build-with-old-kernel-headers.pat=
ch \
            file://0003-webkit2-set-OUTPUT_DIR-value-if-empty.patch \
@@ -26,7 +26,7 @@ SRC_URI =3D "http://download.qt-project.org/official_re=
leases/qt/4.8/${PV}/qt-ever
            file://qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch \
 "
=20
-UPSTREAM_CHECK_URI =3D "http://download.qt.io/official_releases/qt/4.8/"
+UPSTREAM_CHECK_URI =3D "http://download.qt.io/archive/qt/4.8/"
 UPSTREAM_CHECK_REGEX =3D "(?P<pver>\d+(\.\d+)+)/"
=20
 S =3D "${WORKDIR}/qt-everywhere-opensource-src-${PV}"
--=20
2.20.1

