Received: from MTA-11-4.privateemail.com (MTA-11-4.privateemail.com [198.54.127.104])
 by mx.groups.io with SMTP id smtpd.web10.15556.1596395906868410271
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Aug 2020 12:18:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: whitetree.xyz, ip: 198.54.127.104, mailfrom: charles.davies@whitetree.xyz)
Received: from mta-11.privateemail.com (localhost [127.0.0.1])
	by mta-11.privateemail.com (Postfix) with ESMTP id 2E5E98004A;
	Sun,  2 Aug 2020 15:18:26 -0400 (EDT)
Received: from localhost.localdomain (unknown [10.20.151.201])
	by mta-11.privateemail.com (Postfix) with ESMTPA id 47AF480041;
	Sun,  2 Aug 2020 19:18:25 +0000 (UTC)
From: "Charlie Davies" <charles.davies@whitetree.xyz>
To: yocto@lists.yoctoproject.org
Cc: Charlie Davies <charles.davies@whitetree.xyz>
Subject: [meta-security][PATCH] clamav: add INSTALL_CLAMAV_CVD flag to do_install
Date: Sun,  2 Aug 2020 20:18:06 +0100
Message-Id: <20200802191805.129910-1-charles.davies@whitetree.xyz>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Content-Transfer-Encoding: quoted-printable

Recipe provides INSTALL_CLAMAV_CVD flag to bypass clamav
cvd db creation. During do_install this flag should be
used to conditionally skip install of cvd db if needed.

Signed-off-by: Charlie Davies <charles.davies@whitetree.xyz>
---
 recipes-scanners/clamav/clamav_0.101.5.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-scanners/clamav/clamav_0.101.5.bb b/recipes-scanners=
/clamav/clamav_0.101.5.bb
index 2ea2c9b..770186a 100644
--- a/recipes-scanners/clamav/clamav_0.101.5.bb
+++ b/recipes-scanners/clamav/clamav_0.101.5.bb
@@ -89,7 +89,9 @@ do_install_append_class-target () {
     install -m 0644 ${WORKDIR}/volatiles.03_clamav  ${D}${sysconfdir}/de=
fault/volatiles/volatiles.03_clamav
     sed -i -e 's#${STAGING_DIR_HOST}##g' ${D}${libdir}/pkgconfig/libclam=
av.pc
     rm ${D}/${libdir}/libclamav.so
-    install -m 666 ${S}/clamav_db/* ${D}/${localstatedir}/lib/clamav/.
+    if [ "${INSTALL_CLAMAV_CVD}" =3D "1" ]; then
+        install -m 666 ${S}/clamav_db/* ${D}/${localstatedir}/lib/clamav=
/.
+    fi
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d=
)};then
         install -D -m 0644 ${WORKDIR}/clamav.service ${D}${systemd_unitd=
ir}/system/clamav.service
         install -d ${D}${sysconfdir}/tmpfiles.d
--=20
2.27.0

