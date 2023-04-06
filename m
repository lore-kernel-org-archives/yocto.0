Return-Path: <gowtham.sureshkumar@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96337C7618D
	for <webhook@archiver.kernel.org>; Thu,  6 Apr 2023 17:39:46 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.165260.1680802779819909992
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Apr 2023 10:39:39 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: gowtham.sureshkumar@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F538169E;
	Thu,  6 Apr 2023 10:40:23 -0700 (PDT)
Received: from e126345.arm.com (unknown [10.57.21.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 613B73F73F;
	Thu,  6 Apr 2023 10:39:38 -0700 (PDT)
From: gowtham.sureshkumar@arm.com
To: yocto@lists.yoctoproject.org
Cc: Gowtham Suresh Kumar <gowtham.sureshkumar@arm.com>
Subject: [PATCH 1/2] meta-parsec: Disable RSA-OAEP OEQA tests for Parsec PKCS11 backend
Date: Thu,  6 Apr 2023 18:39:02 +0100
Message-Id: <20230406173903.23459-2-gowtham.sureshkumar@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230406173903.23459-1-gowtham.sureshkumar@arm.com>
References: <20230406173903.23459-1-gowtham.sureshkumar@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 17:39:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59634

From: Gowtham Suresh Kumar <gowtham.sureshkumar@arm.com>

Signed-off-by: Gowtham Suresh Kumar <gowtham.sureshkumar@arm.com>
---
 meta-parsec/lib/oeqa/runtime/cases/parsec.py | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/meta-parsec/lib/oeqa/runtime/cases/parsec.py b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
index 6be84ba..71061db 100644
--- a/meta-parsec/lib/oeqa/runtime/cases/parsec.py
+++ b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
@@ -53,10 +53,10 @@ class ParsecTest(OERuntimeTestCase):
             self.assertIn("ID: 0x0%d (%s provider)" % (prov_id, provider),
                           output, msg='%s provider is not configured.' % provider)
 
-    def run_cli_tests(self, prov_id=None):
+    def run_cli_tests(self, prov_id=None, extra_params=""):
         """ Run Parsec CLI end-to-end tests against one or all providers """
 
-        status, output = self.target.run('parsec-cli-tests.sh %s' % ("-%d" % prov_id if prov_id else ""))
+        status, output = self.target.run('parsec-cli-tests.sh %s %s' % ("-%d" % prov_id if prov_id else "", extra_params))
         self.assertEqual(status, 0, msg='Parsec CLI tests failed.\n %s' % output)
 
     def check_packageconfig(self, prov):
@@ -181,7 +181,9 @@ class ParsecTest(OERuntimeTestCase):
             self.configure_pkcs11_provider()
             self.check_parsec_providers("PKCS #11", prov_id)
 
-        self.run_cli_tests(prov_id)
+        # Software PKCS11 we use for OE QA testing
+        # doesn't support RSA-OAEP(SHA256) encryption/decryption operations
+        self.run_cli_tests(prov_id, "--no-oaep")
         self.restore_parsec_config()
 
     def configure_TS_provider(self):
-- 
2.17.1


