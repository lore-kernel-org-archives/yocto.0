Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BEC7C46CD2
	for <webhook@archiver.kernel.org>; Sun, 17 Dec 2023 13:30:38 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web11.18447.1702819837292832805
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Dec 2023 05:30:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=dlDvvr/k;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2576B60005;
	Sun, 17 Dec 2023 13:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702819835;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gTadV1/rNLo96VM5eP8TuAkE9LTlUAM+xcdebuX1mYI=;
	b=dlDvvr/kvRfyz802of25BpWdorJFDoxlc1wmatOq5419oHzwOU+6ViCr7kqPf7mMnFVH9x
	txkRNYpahk1p5lYjR2TTWVzEsPdqNa0RsNziYpzd82pIvY801II36ygwSb/LlNByYLoIdv
	kg4XAEGTFNv1s2HxCMRIn8jB04HdGz3yQ9HN/mKVZ+aTCn4vQt0cFv+fU3I5+fWt6OMXRO
	3nW2dtttENM0mlZ0maBvUxJfgwFkSqF8rVLxvkQcdN/c3Ln7IGrTwhacDpAYbmHqFIUDB+
	4+kNMB2mqj7XRdrzc9Wt5bJU2lGcc7X7NhtJVch5v/VeFxDjAeBrVbfFdfoPkg==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 2/4] scripts: send_qa_email: allow testing against non fixed tags
Date: Sun, 17 Dec 2023 14:30:30 +0100
Message-ID: <20231217133032.27231-3-alexis.lothore@bootlin.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61947

From: Alexis Lothoré <alexis.lothore@bootlin.com>

send_qa_email currently deals with tags in a "reproducible" way: despite
new versions being released on different branches, the computation of the
"reference" version for a specific input version always remain the same.

This behavior does not match perfectly real expectations: if at the some
point we get version 4.3.1 as a comparison reference for a regression
report, and 4.3.2 is released some time later, we want the next comparision
to be done against 4.3.2.

Start introducing this new behavior by allowing the tests to check returned
version against regex patterns instead of static strings, so we can for
example use wildcards on the "micro" version

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/test_send_qa_email.py | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/scripts/test_send_qa_email.py b/scripts/test_send_qa_email.py
index 8ab91538748a..2dd946f32bf1 100755
--- a/scripts/test_send_qa_email.py
+++ b/scripts/test_send_qa_email.py
@@ -12,6 +12,7 @@ import sys
 import unittest
 import send_qa_email
 import logging
+import re
 
 logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")
 log = logging.getLogger('send-qa-email')
@@ -60,7 +61,8 @@ class TestVersion(unittest.TestCase):
             input_version = data["input"]["version"]
             expected = data["expected"]
             with self.subTest(f"Test {input_version} previous tag (expecting {expected})"):
-                self.assertEqual(send_qa_email.get_previous_tag(os.environ.get("POKY_PATH"), input_version), expected)
+               result = send_qa_email.get_previous_tag(os.environ.get("POKY_PATH"), input_version)
+               self.assertIsNotNone(re.match(data["expected"], result), msg=f"get_previous_tag returned {result}")
 
     def test_is_release_version(self):
         for data in self.test_data_is_release_version:
-- 
2.42.1


