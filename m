Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web12.38372.1628869728975519462
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Aug 2021 08:48:49 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 4101020004;
	Fri, 13 Aug 2021 15:48:46 +0000 (UTC)
From: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH][yocto-autobuilder2] schedulers: change default value for SWAT monitoring
Date: Fri, 13 Aug 2021 17:48:43 +0200
Message-Id: <20210813154843.1149376-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

meta-oe and auh are not for SWAT, change the default to be false

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 schedulers.py | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/schedulers.py b/schedulers.py
index 8f6f34323a75..6b711d65766f 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -206,11 +206,15 @@ def props_for_builder(builder):
     scheduler
     """
 
+    swat_default = True
+    if builder in ['auh', 'meta-oe']:
+        swat_default = False
+
     props = []
     props.append(util.BooleanParameter(
         name="swat_monitor",
         label="Should SWAT monitor this build?",
-        default=True))
+        default=swat_default))
     if builder == 'build-appliance':
         props.append(buildappsrcrev_param())
     if builder in ['build-appliance', 'buildtools', 'eclipse-plugin-neon', 'eclipse-plugin-oxygen']:
-- 
2.31.1

