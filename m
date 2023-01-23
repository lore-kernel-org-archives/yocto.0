Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A214C05027
	for <webhook@archiver.kernel.org>; Mon, 23 Jan 2023 12:31:09 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.41224.1674477064789435491
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Jan 2023 04:31:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Ahil5WWp;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 2DADD40006;
	Mon, 23 Jan 2023 12:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1674477063;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=znqHXZrPoWtTgMjzROb5MfXdxX7WmHxHkmIUTPkvkq8=;
	b=Ahil5WWpIi8QJl81lRgn8dLm0XrqeiALwkGM/1A4pO8SV9MlAzPLUI8Mio6GtopHA1fvdH
	ldRf/QHgbqtyS1yXLW60wu/NfdkLp2yScmBOesLxlVoB9UfordvV55aYZxYlnK/fMqT5Y2
	qYSgX1xDnzTG6FR0ohIZqH2WY5NKX5+ztQvl/YhrcAiISpxdaUSNMPThwHjZWpVP86jnZ+
	sUHZqgKnkWFZfPvJf8JaFlrAKG3cIitXskpW7a+PmXXnMlU0mH7dVjbzP1h/bPfYdME18G
	J8qRZ/+tMBFBQaOT3BblqZO0IQxnZt0/WXUiVlCYKcv6rCaHLpPI7RegWAfeIw==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com,
	=?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
Subject: [autobuilder][PATCH v2 4/4] scripts/send_qa_email.py: add unit tests on previous version computation
Date: Mon, 23 Jan 2023 13:31:11 +0100
Message-Id: <20230123123111.37665-5-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230123123111.37665-1-alexis.lothore@bootlin.com>
References: <20230123123111.37665-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Jan 2023 12:31:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59034

The "previous version" computation bring many edge cases depending on the
version under release. Add a basic test suite to validate currently implemented
computation strategy and to prevent mistakes when ediiting it in the future

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/test_send_qa_email.py | 57 +++++++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100755 scripts/test_send_qa_email.py

diff --git a/scripts/test_send_qa_email.py b/scripts/test_send_qa_email.py
new file mode 100755
index 0000000..6822451
--- /dev/null
+++ b/scripts/test_send_qa_email.py
@@ -0,0 +1,57 @@
+#!/usr/bin/env python3
+"""
+Test suite for send_qa_email.py
+
+The suite needs a valid poky clone to run since it will
+fetch and return revisions from remote repository. To run the suite,
+set POKY_PATH environment variable accordingly:
+`POKY_PATH=~/src/poky ./scripts/test_send_qa_email.py`
+"""
+import os
+import sys
+import unittest
+import send_qa_email
+
+
+class TestVersion(unittest.TestCase):
+    test_data_get_version = [
+        {"input": {"version": "4.1.2"}, "expected": "yocto-4.1.1"},
+        {"input": {"version": "4.1"}, "expected": "yocto-4.0"},
+        {"input": {"version": "4.1.1"}, "expected": "yocto-4.1"},
+        {"input": {"version": "4.1_M2"}, "expected": "4.1_M1"},
+        {"input": {"version": "4.1_M1"}, "expected": "yocto-4.0"},
+        {"input": {"version": "4.1.1.rc1"}, "expected": "yocto-4.1"},
+        {"input": {"version": "4.1.2.rc1"}, "expected": "yocto-4.1.1"},
+        {"input": {"version": "4.1_M3.rc1"}, "expected": "4.1_M2"},
+        {"input": {"version": "4.1_M3.rc4"}, "expected": "4.1_M2"},
+        {"input": {"version": "4.1_M1.rc1"}, "expected": "yocto-4.0"},
+        {"input": {"version": "4.1_M1.rc4"}, "expected": "yocto-4.0"},
+        {"input": {"version": "4.1.rc4"}, "expected": "yocto-4.0"},
+        {"input": {"version": "20230120-3"}, "expected": "origin/master"},
+    ]
+
+    test_data_get_sha1 = [
+        {"input": "yocto-4.0", "expected": "00cfdde791a0176c134f31e5a09eff725e75b905"},
+        {"input": "4.1_M1", "expected": "95066dde6861ee08fdb505ab3e0422156cc24fae"},
+    ]
+
+    def test_versions(self):
+        for data in self.test_data_get_version:
+            test_name = data["input"]["version"]
+            with self.subTest(f"Test {test_name} previous tag"):
+                self.assertEqual(send_qa_email.get_previous_tag(os.environ.get(
+                    "POKY_PATH"), data["input"]["version"]), data["expected"])
+
+    def test_get_sha1(self):
+        for data in self.test_data_get_sha1:
+            test_name = data["input"]
+            with self.subTest(f"Test SHA1 from {test_name}"):
+                self.assertEqual(send_qa_email.get_sha1(os.environ.get(
+                    "POKY_PATH"), data["input"]), data["expected"])
+
+
+if __name__ == '__main__':
+    if os.environ.get("POKY_PATH") is None:
+        print("Please set POKY_PATH to proper poky clone location before running tests")
+        sys.exit(1)
+    unittest.main()
-- 
2.39.0


