Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
 by mx.groups.io with SMTP id smtpd.web11.9871.1585311187703812358
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Mar 2020 05:13:08 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: pengutronix.de, ip: 85.220.165.71, mailfrom: jlu@pengutronix.de)
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1jHnrG-0002pU-5W; Fri, 27 Mar 2020 13:13:06 +0100
Received: from jlu by dude.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1jHnrF-0003R6-Po; Fri, 27 Mar 2020 13:13:05 +0100
From: "Jan Luebbe" <jlu@pengutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Jan Luebbe <jlu@pengutronix.de>
Subject: [meta-security][PATCH 2/2] apparmor: update to 2.13.4
Date: Fri, 27 Mar 2020 13:12:53 +0100
Message-Id: <20200327121253.13149-2-jlu@pengutronix.de>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200327121253.13149-1-jlu@pengutronix.de>
References: <20200327121253.13149-1-jlu@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: jlu@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@lists.yoctoproject.org
Content-Transfer-Encoding: 8bit

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 recipes-mac/AppArmor/{apparmor_2.13.3.bb => apparmor_2.13.4.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-mac/AppArmor/{apparmor_2.13.3.bb => apparmor_2.13.4.bb} (99%)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.3.bb b/recipes-mac/AppArmor/apparmor_2.13.4.bb
similarity index 99%
rename from recipes-mac/AppArmor/apparmor_2.13.3.bb
rename to recipes-mac/AppArmor/apparmor_2.13.4.bb
index 3398a3a75baa..f8fd19eb9e00 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.3.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.4.bb
@@ -25,7 +25,7 @@ SRC_URI = " \
 	file://run-ptest \
 	"
 
-SRCREV = "2f9d9ea7e01a115b29858455d3b1b5c6a0bab75c"
+SRCREV = "df0ac742f7a1146181d8734d03334494f2015134"
 S = "${WORKDIR}/git"
 
 PARALLEL_MAKE = ""
-- 
2.26.0.rc2

