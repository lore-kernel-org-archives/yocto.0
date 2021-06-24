Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web08.3330.1624512588319264527
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jun 2021 22:29:49 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: thomas.perrot@bootlin.com)
Received: (Authenticated sender: thomas.perrot@bootlin.com)
	by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 1EFBB20003;
	Thu, 24 Jun 2021 05:29:45 +0000 (UTC)
From: "Thomas Perrot" <thomas.perrot@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: richard.purdie@linuxfoundation.org,
	Thomas Perrot <thomas.perrot@bootlin.com>
Subject: [yocto][PATCH] models: Add a new error type for check-layer
Date: Thu, 24 Jun 2021 07:29:41 +0200
Message-Id: <20210624052941.180911-1-thomas.perrot@bootlin.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Defines a new ErrorType and ERROR_TYPE_CHOICES, in order to support this kind of
errors.

[YOCTO #14208]

Signed-off-by: Thomas Perrot <thomas.perrot@bootlin.com>
---
 Post/models.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Post/models.py b/Post/models.py
index 3fa66f2198a4..b7a913c82359 100644
--- a/Post/models.py
+++ b/Post/models.py
@@ -15,6 +15,7 @@ import Levenshtein
 
 class ErrorType(object):
     RECIPE = 'recipe'
+    CHECK_LAYER = 'check-layer'
     CORE = 'core'
     BITBAKE_SELFTEST = 'bitbake-selftest'
     OE_SELFTEST = 'oe-selftest'
@@ -26,6 +27,7 @@ class InvalidErrorType(Exception):
 class Build(models.Model):
     ERROR_TYPE_CHOICES = (
             (ErrorType.RECIPE, 'Recipe'),
+            (ErrorType.CHECK_LAYER, 'check-layer'),
             (ErrorType.CORE, 'Core'),
             (ErrorType.BITBAKE_SELFTEST, 'Bitbake selftest'),
             (ErrorType.OE_SELFTEST, 'OE selftest'),
-- 
2.31.1

