Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8302CC76196
	for <webhook@archiver.kernel.org>; Mon, 10 Apr 2023 18:34:11 +0000 (UTC)
Received: from cam-smtp0.cambridge.arm.com (cam-smtp0.cambridge.arm.com [217.140.106.54])
 by mx.groups.io with SMTP id smtpd.web11.52332.1681151643822905297
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Apr 2023 11:34:04 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.106.54, mailfrom: anton.antonov@arm.com)
Received: from atg-devlab-kelpie.cambridge.arm.com (atg-devlab-kelpie.cambridge.arm.com [10.2.80.92])
	by cam-smtp0.cambridge.arm.com (8.13.8/8.13.8) with ESMTP id 33AIY0cH017154;
	Mon, 10 Apr 2023 19:34:01 +0100
From: Anton Antonov <Anton.Antonov@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Anton.Antonov@arm.com
Subject: [meta-parsec][PATCH] Fix PACKAGECONFIG check in Parsec OEQA tests
Date: Mon, 10 Apr 2023 19:33:55 +0100
Message-Id: <20230410183355.1880224-1-Anton.Antonov@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Apr 2023 18:34:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59658

If PACKAGECONFIG is not defined in local.conf then
its default value is not included in cls.tc.td map.

Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
---
 meta-parsec/lib/oeqa/runtime/cases/parsec.py | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/meta-parsec/lib/oeqa/runtime/cases/parsec.py b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
index 71061db..66932ed 100644
--- a/meta-parsec/lib/oeqa/runtime/cases/parsec.py
+++ b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
@@ -61,9 +61,18 @@ class ParsecTest(OERuntimeTestCase):
 
     def check_packageconfig(self, prov):
         """ Check that the require provider is included in Parsec """
-        if prov not in self.tc.td['PACKAGECONFIG:pn-parsec-service']:
+
+        if 'PACKAGECONFIG:pn-parsec-service' in self.tc.td.keys():
+            providers = self.tc.td['PACKAGECONFIG:pn-parsec-service']
+        else:
+            # PACKAGECONFIG is not defined in local.conf
+            # Let's use the default value
+            providers = "PKCS11 MBED-CRYPTO"
+            if 'tpm2' in self.tc.td['DISTRO_FEATURES']:
+                providers += " TPM"
+        if prov not in providers:
             self.skipTest('%s provider is not included in Parsec. Parsec PACKAGECONFIG: "%s"' % \
-                          (prov, self.tc.td['PACKAGECONFIG:pn-parsec-service']))
+                          (prov, providers))
 
     def check_packages(self, prov, packages):
         """ Check for the required packages for Parsec providers software backends """
-- 
2.25.1


