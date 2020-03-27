Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
 by mx.groups.io with SMTP id smtpd.web10.9949.1585311180605378652
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Mar 2020 05:13:01 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: pengutronix.de, ip: 85.220.165.71, mailfrom: jlu@pengutronix.de)
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1jHnr8-0002nu-JL; Fri, 27 Mar 2020 13:12:58 +0100
Received: from jlu by dude.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1jHnr7-0003Qu-Ml; Fri, 27 Mar 2020 13:12:57 +0100
From: "Jan Luebbe" <jlu@pengutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Jan Luebbe <jlu@pengutronix.de>
Subject: [meta-security][PATCH 1/2] apparmor: fix wrong executable permission on service file
Date: Fri, 27 Mar 2020 13:12:52 +0100
Message-Id: <20200327121253.13149-1-jlu@pengutronix.de>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: jlu@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@lists.yoctoproject.org
Content-Transfer-Encoding: 8bit

This avoids "systemd[1]: Configuration file
/lib/systemd/system/apparmor.service is marked executable. Please remove
executable permission bits. Proceeding anyway." on boot.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 recipes-mac/AppArmor/apparmor_2.13.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.3.bb b/recipes-mac/AppArmor/apparmor_2.13.3.bb
index 0c62a4daf172..3398a3a75baa 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.3.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.3.bb
@@ -119,7 +119,7 @@ do_install () {
 
 	if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
 		install -d ${D}${systemd_system_unitdir}
-		install ${WORKDIR}/apparmor.service ${D}${systemd_system_unitdir}
+		install -m 0644 ${WORKDIR}/apparmor.service ${D}${systemd_system_unitdir}
 	fi
 }
 
-- 
2.26.0.rc2

