Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 382BCC77B61
	for <webhook@archiver.kernel.org>; Thu, 13 Apr 2023 10:06:42 +0000 (UTC)
Received: from cam-smtp0.cambridge.arm.com (cam-smtp0.cambridge.arm.com [217.140.106.49])
 by mx.groups.io with SMTP id smtpd.web11.8796.1681380400254946074
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Apr 2023 03:06:40 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.106.49, mailfrom: anton.antonov@arm.com)
Received: from atg-devlab-kelpie.cambridge.arm.com (atg-devlab-kelpie.cambridge.arm.com [10.2.80.92])
	by cam-smtp0.cambridge.arm.com (8.13.8/8.13.8) with ESMTP id 33DA6b08023263;
	Thu, 13 Apr 2023 11:06:38 +0100
From: Anton Antonov <Anton.Antonov@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Anton.Antonov@arm.com
Subject: [meta-parsec][master,langdale][PATCH] Flush caches after OEQA tests
Date: Thu, 13 Apr 2023 11:06:35 +0100
Message-Id: <20230413100635.3480007-1-Anton.Antonov@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Apr 2023 10:06:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59703

Make sure that all changes a saved after running the tests.

Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
---
 meta-parsec/lib/oeqa/runtime/cases/parsec.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-parsec/lib/oeqa/runtime/cases/parsec.py b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
index 66932ed..004717d 100644
--- a/meta-parsec/lib/oeqa/runtime/cases/parsec.py
+++ b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
@@ -24,6 +24,10 @@ class ParsecTest(OERuntimeTestCase):
             self.parsec_status='pgrep -l parsec'
             self.parsec_reload='/etc/init.d/parsec reload'
 
+    def tearDown(self):
+        self.target.run('sync')
+        super(ParsecTest, self).tearDown()
+
     def copy_subconfig(self, cfg, provider):
         """ Copy a provider configuration to target and append it to Parsec config """
 
-- 
2.25.1


