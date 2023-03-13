Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75E59C6FD19
	for <webhook@archiver.kernel.org>; Mon, 13 Mar 2023 14:52:05 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web10.21572.1678719124021563622
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Mar 2023 07:52:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=fVTWcJ8B;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 4B58BE000B;
	Mon, 13 Mar 2023 14:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1678719122;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CJUdGhsJnO45G5N9HX75yb+OALyKko9NAW5YklwyaXk=;
	b=fVTWcJ8BAQQzb0BBXMmtd8LLNgqYeaxt6A/Emgf7b8/JtFVOoMrZglEhl5jMX1lpkXSZe1
	fllkIDULbrQpnhHX/7ulKhg8/kfDfdjbaPzy7e6B0bvrMFSbvzgKcs7h6damoqbYAF5aSR
	djAr/QQFC2TquN1P999NSAxuOdlHj7Rfu7knkzqN2vLOxolw5Unddcopp8aI1Elr4esepo
	8sMGtVowaauGRXc5sXAcRdmVTlMGuWEHQeDfut47LQj55xK85Pf7L+ynl0ZqaPe9rL1s2P
	/NIecyF95fI58BL/Ze6tQEepHZFcZvjnbBdDe3FN3utXsZa8Q92OU4IJ03l4Pg==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org,
	alexandre.belloni@bootlin.com
Cc: thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 5/8] scripts/send-qa-email: add tests for is_release_version
Date: Mon, 13 Mar 2023 15:51:42 +0100
Message-Id: <20230313145145.2574842-6-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230313145145.2574842-1-alexis.lothore@bootlin.com>
References: <20230313145145.2574842-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Mar 2023 14:52:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59414

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/test_send_qa_email.py | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/scripts/test_send_qa_email.py b/scripts/test_send_qa_email.py
index c1347fb..48bca98 100755
--- a/scripts/test_send_qa_email.py
+++ b/scripts/test_send_qa_email.py
@@ -29,6 +29,12 @@ class TestVersion(unittest.TestCase):
         {"input": {"version": "4.1.rc4"}, "expected": "yocto-4.0"}
     ]
 
+    test_data_is_release_version = [
+        {"input": "yocto-4.2", "expected":True},
+        {"input": "20230313-15", "expected":False},
+        {"input": None, "expected":False}
+    ]
+
     def test_versions(self):
         for data in self.test_data_get_version:
             test_name = data["input"]["version"]
@@ -36,6 +42,10 @@ class TestVersion(unittest.TestCase):
                 self.assertEqual(send_qa_email.get_previous_tag(os.environ.get(
                     "POKY_PATH"), data["input"]["version"]), data["expected"])
 
+    def test_is_release_version(self):
+        for data in self.test_data_is_release_version:
+            with self.subTest(f"{data['input']}"):
+                self.assertEqual(send_qa_email.is_release_version(data['input']), data['expected'])
 
 if __name__ == '__main__':
     if os.environ.get("POKY_PATH") is None:
-- 
2.39.2


