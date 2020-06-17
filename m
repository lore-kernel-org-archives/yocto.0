Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.170.1592365378050866522
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jun 2020 20:42:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: kai.kang@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93316E01D11; Tue, 16 Jun 2020 20:42:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86773E01D0D
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2020 20:42:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 05H3gtwW004235
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2020 20:42:55 -0700 (PDT)
Received: from pek-kkang-d1.wrs.com (128.224.162.131) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.487.0; Tue, 16 Jun 2020 20:42:55 -0700
From: "kai" <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-security][PATCH] sssd: disable build secrets
Date: Wed, 17 Jun 2020 11:41:00 +0800
Message-ID: <20200617034100.3522174-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

From: Kai Kang <kai.kang@windriver.com>

It requires http_parser.h to build secrets:

| configure: error:
| You must have the header file http_parser.h installed to build sssd
| with secrets responder. If you want to build sssd without secret respon=
der
| then specify --without-secrets when running configure.

The header file is from package http-parser[1] rather than apache2. But
there is no recipe http-parser in openembedded. So disable build secrets
for sssd and remove related systemd service and socket files.

Reference:
1. https://github.com/nodejs/http-parser

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 recipes-security/sssd/sssd_1.16.4.bb | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd=
/sssd_1.16.4.bb
index 7ea1586..2c3c803 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -39,8 +39,7 @@ PACKAGECONFIG +=3D "${@bb.utils.contains('DISTRO_FEATUR=
ES', 'systemd', 'systemd',
=20
 PACKAGECONFIG[autofs] =3D "--with-autofs, --with-autofs=3Dno"
 PACKAGECONFIG[crypto] =3D "--with-crypto=3Dlibcrypto, , libcrypto"
-PACKAGECONFIG[curl] =3D "--with-secrets --with-kcm, --without-secrets --=
without-kcm, curl jansson"
-PACKAGECONFIG[http] =3D "--with-secrets, --without-secrets, apache2"
+PACKAGECONFIG[curl] =3D "--with-kcm, --without-kcm, curl jansson"
 PACKAGECONFIG[infopipe] =3D "--with-infopipe, --with-infopipe=3Dno, "
 PACKAGECONFIG[manpages] =3D "--with-manpages, --with-manpages=3Dno"
 PACKAGECONFIG[nl] =3D "--with-libnl, --with-libnl=3Dno, libnl"
@@ -60,6 +59,7 @@ EXTRA_OECONF +=3D " \
     --without-python2-bindings \
     --enable-pammoddir=3D${base_libdir}/security \
     --without-python2-bindings \
+    --without-secrets \
 "
=20
 do_configure_prepend() {
@@ -85,6 +85,7 @@ do_install () {
     # Remove /var/run as it is created on startup
     rm -rf ${D}${localstatedir}/run
=20
+    rm -f ${D}${systemd_system_unitdir}/sssd-secrets.*
 }
=20
 pkg_postinst_ontarget_${PN} () {
@@ -109,8 +110,6 @@ SYSTEMD_SERVICE_${PN} =3D " \
     sssd-pam-priv.socket \
     sssd-pam.service \
     sssd-pam.socket \
-    sssd-secrets.service \
-    sssd-secrets.socket \
     sssd.service \
 "
 SYSTEMD_AUTO_ENABLE =3D "disable"
--=20
2.17.1

