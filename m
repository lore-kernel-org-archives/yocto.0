Received: from MTA-13-4.privateemail.com (MTA-13-4.privateemail.com [198.54.127.109])
 by mx.groups.io with SMTP id smtpd.web11.22677.1599746054794983443
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:54:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: whitetree.xyz, ip: 198.54.127.109, mailfrom: charles.davies@whitetree.xyz)
Received: from mta-13.privateemail.com (localhost [127.0.0.1])
	by mta-13.privateemail.com (Postfix) with ESMTP id 7A97D80065;
	Thu, 10 Sep 2020 09:54:11 -0400 (EDT)
Received: from localhost.localdomain (unknown [10.20.151.223])
	by mta-13.privateemail.com (Postfix) with ESMTPA id EE6A48004B;
	Thu, 10 Sep 2020 13:54:09 +0000 (UTC)
From: "Charlie Davies" <charles.davies@whitetree.xyz>
To: yocto@lists.yoctoproject.org
Cc: Charlie Davies <charles.davies@whitetree.xyz>
Subject: [meta-security][dunfell][PATCH] clamav: add INSTALL_CLAMAV_CVD flag to do_install
Date: Thu, 10 Sep 2020 14:53:15 +0100
Message-Id: <20200910135315.12377-1-charles.davies@whitetree.xyz>
X-Mailer: git-send-email 2.28.0
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

