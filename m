Received: from MTA-05-4.privateemail.com (MTA-05-4.privateemail.com [198.54.127.60])
 by mx.groups.io with SMTP id smtpd.web12.3043.1602033650497090333
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Oct 2020 18:20:50 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: whitetree.xyz, ip: 198.54.127.60, mailfrom: charles.davies@whitetree.xyz)
Received: from MTA-05.privateemail.com (localhost [127.0.0.1])
	by MTA-05.privateemail.com (Postfix) with ESMTP id 89D116004E;
	Tue,  6 Oct 2020 21:20:49 -0400 (EDT)
Received: from localhost.localdomain (unknown [10.20.151.220])
	by MTA-05.privateemail.com (Postfix) with ESMTPA id 507816004C;
	Wed,  7 Oct 2020 01:20:48 +0000 (UTC)
From: "Charlie Davies" <charles.davies@whitetree.xyz>
To: yocto@lists.yoctoproject.org
Cc: Charlie Davies <charles.davies@whitetree.xyz>
Subject: [meta-security][zeus][PATCH 1/1] clamav: add INSTALL_CLAMAV_CVD flag to do_install
Date: Wed,  7 Oct 2020 02:20:06 +0100
Message-Id: <20201007012006.2579-1-charles.davies@whitetree.xyz>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Content-Transfer-Encoding: quoted-printable

Recipe provides INSTALL_CLAMAV_CVD flag to bypass clamav
cvd db creation. During do_install this flag should be
used to conditionally skip install of cvd db if needed.

Signed-off-by: Charlie Davies <charles.davies@whitetree.xyz>
---
 recipes-security/clamav/clamav_0.99.4.bb | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/=
clamav/clamav_0.99.4.bb
index a340b48..1ee3f58 100644
--- a/recipes-security/clamav/clamav_0.99.4.bb
+++ b/recipes-security/clamav/clamav_0.99.4.bb
@@ -102,7 +102,10 @@ do_install_append_class-target () {
     install -m 0644 ${WORKDIR}/volatiles.03_clamav  ${D}${sysconfdir}/de=
fault/volatiles/volatiles.03_clamav
     sed -i -e 's#${STAGING_DIR_HOST}##g' ${D}${libdir}/pkgconfig/libclam=
av.pc
     rm ${D}/${libdir}/libclamav.so
-    install -m 666 ${S}/clamav_db/* ${D}/${localstatedir}/lib/clamav/.
+    if [ "${INSTALL_CLAMAV_CVD}" =3D "1" ]; then
+        bbnote "CLAMAV installing cvd"
+        install -m 666 ${S}/clamav_db/* ${D}/${localstatedir}/lib/clamav=
/.
+    fi
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d=
)};then
         install -D -m 0644 ${WORKDIR}/clamav.service ${D}${systemd_unitd=
ir}/system/clamav.service
         install -d ${D}${sysconfdir}/tmpfiles.d
--=20
2.28.0

