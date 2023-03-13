Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AC09C6FD1F
	for <webhook@archiver.kernel.org>; Mon, 13 Mar 2023 14:52:15 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web11.22134.1678719125020447466
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Mar 2023 07:52:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=m/gPOokc;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 5C5E2E0003;
	Mon, 13 Mar 2023 14:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1678719123;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lV/NjGuaFRKNnStf2dhyVYFbBvQQKmoCqsmZKd+iYFE=;
	b=m/gPOokc81Y7X5fe/AH0V96i7X4oLje8ML4oeSHwBDGcycVMl4nI8b1OH4P+8frL6B9SWw
	Oy0zawf/XJaoVcm4KVOwwCQoHS65AC653YetrQjRc9b25jnbFeozv5iwpkuSiarVisVTa0
	DXhBFKxUUgnUQ423cWSspYBHC762DCNR04IezZb3Rnna0GAh2lYlbvuQtUsNh3i9oxEkDO
	Us41+v+uH79v1ufmAIb9lZgFAUhN7UQ7OQaG7nhWOT4C104EAHfeejRsHECWqgkcEEPqeN
	g1XWU4tcLlbvolIcX7eENczPila5WzT2Kh9BtQC/wQRTE75RmxHwi/Ncg4Krsw==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org,
	alexandre.belloni@bootlin.com
Cc: thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 7/8] scripts/test_send_qa_email.py: add tests for base/target pair guessing
Date: Mon, 13 Mar 2023 15:51:44 +0100
Message-Id: <20230313145145.2574842-8-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230313145145.2574842-1-alexis.lothore@bootlin.com>
References: <20230313145145.2574842-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Mar 2023 14:52:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59416

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/test_send_qa_email.py | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/scripts/test_send_qa_email.py b/scripts/test_send_qa_email.py
index 48bca98..ccdcba6 100755
--- a/scripts/test_send_qa_email.py
+++ b/scripts/test_send_qa_email.py
@@ -35,6 +35,21 @@ class TestVersion(unittest.TestCase):
         {"input": None, "expected":False}
     ]
 
+    # This data represent real data returned by utils.getcomparisonbranch
+    # and the release argument passed to send-qa-email script
+    regression_inputs = [
+        {"name": "Arbitrary branch", "input": {"basebranch": None,
+                                               "comparebranch": None, "release": None}, "expected": (None, None)},
+        {"name": "Master release", "input": {"basebranch": "master",
+                                             "comparebranch": None, "release": "yocto-4.2_M3.rc1"}, "expected": ("4.2_M2", "master")},
+        {"name": "Older release", "input": {"basebranch": "kirkstone",
+                                            "comparebranch": None, "release": "yocto-4.0.8.rc2"}, "expected": ("yocto-4.0.7", "kirkstone")},
+        {"name": "Master Next", "input": {"basebranch": "master-next",
+                                          "comparebranch": "master", "release": None}, "expected": ("master", "master-next")},
+        {"name": "Fork Master Next", "input": {"basebranch": "ross/mut",
+                                               "comparebranch": "master", "release": None}, "expected": ("master", "ross/mut")},
+    ]
+
     def test_versions(self):
         for data in self.test_data_get_version:
             test_name = data["input"]["version"]
@@ -47,6 +62,12 @@ class TestVersion(unittest.TestCase):
             with self.subTest(f"{data['input']}"):
                 self.assertEqual(send_qa_email.is_release_version(data['input']), data['expected'])
 
+    def test_get_regression_base_and_target(self):
+        for data in self.regression_inputs:
+            with self.subTest(data['name']):
+                self.assertEqual(send_qa_email.get_regression_base_and_target(
+                    data['input']['basebranch'], data['input']['comparebranch'], data['input']['release'], os.environ.get("POKY_PATH")), data['expected'])
+
 if __name__ == '__main__':
     if os.environ.get("POKY_PATH") is None:
         print("Please set POKY_PATH to proper poky clone location before running tests")
-- 
2.39.2


