Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29C1EC46CCD
	for <webhook@archiver.kernel.org>; Sun, 17 Dec 2023 13:30:38 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.18342.1702819836712831041
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Dec 2023 05:30:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=nbJL4fSC;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id D792C60004;
	Sun, 17 Dec 2023 13:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702819835;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oiGTRRSOBvfAh88IfwjahVNov3deCCDVvdBfJK4Y5lA=;
	b=nbJL4fSCQ5Zi4NTDkf74Cjm702k9nRzz7gZzeICH3qg42sEJrkXtxcoBtNZQljFPXuA/j+
	GCmBEKqSL4QiHtcjUkwZvqPrUN8ArSUMZutKmer8gf4wTyqHY+tVgBKivZE+wzu1739KZy
	EgcKWxHMXR79z7VcxHHXZgQ/C7fRO1ECaSxEh0+mTPw/zVKT4um2/PfhfNVr0SnXq+6IUl
	MRYw/G2J7CXL+t37SW4coARHFmmm0k+Ss93lSTDryoEr77Fr+MFoiQvjt44WmB5Ko5p5Gf
	yZBnRfzHh3mAMlDdn9p2pzt5L6E+XpU3O8TpoyKEVrmyDLiIeMr6pk5dfRC4jg==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 1/4] scripts: send_qa_email: slightly rework previous tag test
Date: Sun, 17 Dec 2023 14:30:29 +0100
Message-ID: <20231217133032.27231-2-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231217133032.27231-1-alexis.lothore@bootlin.com>
References: <20231217133032.27231-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexis.lothore@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Dec 2023 13:30:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61945

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Use intermediate variables for test input/output, and print expected
output in subtest to get more info when a test fails

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/test_send_qa_email.py | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/test_send_qa_email.py b/scripts/test_send_qa_email.py
index 5509b3c2510e..8ab91538748a 100755
--- a/scripts/test_send_qa_email.py
+++ b/scripts/test_send_qa_email.py
@@ -57,10 +57,10 @@ class TestVersion(unittest.TestCase):
 
     def test_versions(self):
         for data in self.test_data_get_version:
-            test_name = data["input"]["version"]
-            with self.subTest(f"Test {test_name} previous tag"):
-                self.assertEqual(send_qa_email.get_previous_tag(os.environ.get(
-                    "POKY_PATH"), data["input"]["version"]), data["expected"])
+            input_version = data["input"]["version"]
+            expected = data["expected"]
+            with self.subTest(f"Test {input_version} previous tag (expecting {expected})"):
+                self.assertEqual(send_qa_email.get_previous_tag(os.environ.get("POKY_PATH"), input_version), expected)
 
     def test_is_release_version(self):
         for data in self.test_data_is_release_version:
-- 
2.42.1


