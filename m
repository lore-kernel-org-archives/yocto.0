Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16E50C77B6E
	for <webhook@archiver.kernel.org>; Wed, 12 Apr 2023 15:06:09 +0000 (UTC)
Received: from cam-smtp0.cambridge.arm.com (cam-smtp0.cambridge.arm.com [217.140.106.53])
 by mx.groups.io with SMTP id smtpd.web10.46096.1681311959466968862
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Apr 2023 08:06:00 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.106.53, mailfrom: anton.antonov@arm.com)
Received: from atg-devlab-kelpie.cambridge.arm.com (atg-devlab-kelpie.cambridge.arm.com [10.2.80.92])
	by cam-smtp0.cambridge.arm.com (8.13.8/8.13.8) with ESMTP id 33CF5sWf010317;
	Wed, 12 Apr 2023 16:05:55 +0100
From: Anton Antonov <Anton.Antonov@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Anton.Antonov@arm.com, Anton Antonov <anton.antonov@arm.com>,
        Armin Kuster <akuster808@gmail.com>
Subject: [meta-parsec][langdale][PATCH] Fix PACKAGECONFIG check in Parsec OEQA tests
Date: Wed, 12 Apr 2023 16:05:52 +0100
Message-Id: <20230412150552.1885608-1-Anton.Antonov@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Apr 2023 15:06:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59691

From: Anton Antonov <anton.antonov@arm.com>

If PACKAGECONFIG is not defined in local.conf then
its default value is not included in cls.tc.td map.

Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-parsec/lib/oeqa/runtime/cases/parsec.py | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/meta-parsec/lib/oeqa/runtime/cases/parsec.py b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
index 6be84ba..c6e7893 100644
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


