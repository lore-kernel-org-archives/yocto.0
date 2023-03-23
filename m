Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 632B1C761AF
	for <webhook@archiver.kernel.org>; Thu, 23 Mar 2023 09:21:09 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.67850.1679563261829594377
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Mar 2023 02:21:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=kHd8VQu9;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 2188040015;
	Thu, 23 Mar 2023 09:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679563260;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U+3wU60tBVXdbBYXaHM6oAl2qGMZz1MKhy7Rj6UTFuk=;
	b=kHd8VQu90dhsIEbV67+ga+tRW4mHICKCvupG2FcUa9G0DgNdvfhXtZ5vFrLXZ24K6HgUC6
	IkbarWyp5WDxGdhSn0C/GsOM02vQKpReR9+sItRGk4n42xOctjgoJ3PIlPBMwzrlZWh9zn
	F4uzvJan2l7ls/+7AcSCQQEt9vzdTCAOgCImTPpKyRve6vsgh8qeEnJW3111QzCM+xPZ2S
	ePf49oGmEA4tSx4x/JV2uF3CkHpUqPgDbAPrWYFyL2aSA/19FUsGXtHX4dRmVCTgdKIdfG
	/4LxaFk6I8zrJSm3iQn4qRXB4+BMdmhcXxOOrN15SkwbdZ1FY5JhMsf+L187+g==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 2/3] scripts/test_send_qa_email.py: allow tests with non static results
Date: Thu, 23 Mar 2023 10:20:56 +0100
Message-Id: <20230323092057.17918-3-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230323092057.17918-1-alexis.lothore@bootlin.com>
References: <20230323092057.17918-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Mar 2023 09:21:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59497

From: Alexis Lothoré <alexis.lothore@bootlin.com>

When the test assert is about a tag in Poky, the result will not be the same
depending on existing tags at the time of running tests.

Add a LAST_TAG marker to loosen constraints but still allow to tests for general
cases (e.g. : test that tag-depending tests does not return None)

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/test_send_qa_email.py | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/scripts/test_send_qa_email.py b/scripts/test_send_qa_email.py
index ccdcba6..ce0c6b7 100755
--- a/scripts/test_send_qa_email.py
+++ b/scripts/test_send_qa_email.py
@@ -65,8 +65,17 @@ class TestVersion(unittest.TestCase):
     def test_get_regression_base_and_target(self):
         for data in self.regression_inputs:
             with self.subTest(data['name']):
-                self.assertEqual(send_qa_email.get_regression_base_and_target(
-                    data['input']['basebranch'], data['input']['comparebranch'], data['input']['release'], os.environ.get("POKY_PATH")), data['expected'])
+                base, target = send_qa_email.get_regression_base_and_target(
+                    data['input']['basebranch'], data['input']['comparebranch'], data['input']['release'], os.environ.get("POKY_PATH"))
+                expected_base, expected_target = data["expected"]
+                # The comparison base can not be set statically in tests when it is supposed to be the previous tag,
+                # since the result will depend on current tags
+                if expected_base == "LAST_TAG":
+                    self.assertIsNotNone(base)
+                else:
+                    self.assertEqual(base, expected_base)
+                self.assertEqual(target, expected_target)
+
 
 if __name__ == '__main__':
     if os.environ.get("POKY_PATH") is None:
-- 
2.40.0


