Received: from MTA-13-4.privateemail.com (MTA-13-4.privateemail.com [198.54.127.109])
 by mx.groups.io with SMTP id smtpd.web10.23155.1599747362645317411
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 07:16:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: whitetree.xyz, ip: 198.54.127.109, mailfrom: charles.davies@whitetree.xyz)
Received: from mta-13.privateemail.com (localhost [127.0.0.1])
	by mta-13.privateemail.com (Postfix) with ESMTP id 14DA780077;
	Thu, 10 Sep 2020 10:15:50 -0400 (EDT)
Received: from localhost.localdomain (unknown [10.20.151.239])
	by mta-13.privateemail.com (Postfix) with ESMTPA id 630CD8005C;
	Thu, 10 Sep 2020 14:15:46 +0000 (UTC)
From: "Charlie Davies" <charles.davies@whitetree.xyz>
To: yocto@lists.yoctoproject.org
Cc: Charlie Davies <charles.davies@whitetree.xyz>
Subject: [meta-security][master][dunfell][PATCH] clamav: update SO_VER to 9.0.4
Date: Thu, 10 Sep 2020 15:11:23 +0100
Message-Id: <20200910141123.14207-1-charles.davies@whitetree.xyz>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Charlie Davies <charles.davies@whitetree.xyz>
---
 recipes-scanners/clamav/clamav_0.101.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-scanners/clamav/clamav_0.101.5.bb b/recipes-scanners=
/clamav/clamav_0.101.5.bb
index 2ea2c9b..30c8c08 100644
--- a/recipes-scanners/clamav/clamav_0.101.5.bb
+++ b/recipes-scanners/clamav/clamav_0.101.5.bb
@@ -23,7 +23,7 @@ SRC_URI =3D "git://github.com/vrtadmin/clamav-devel;bra=
nch=3Drel/0.101 \
 S =3D "${WORKDIR}/git"
=20
 LEAD_SONAME =3D "libclamav.so"
-SO_VER =3D "9.0.2"
+SO_VER =3D "9.0.4"
=20
 inherit autotools pkgconfig useradd systemd multilib_header multilib_scr=
ipt
=20
--=20
2.28.0

