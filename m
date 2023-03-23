Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523BCC76195
	for <webhook@archiver.kernel.org>; Thu, 23 Mar 2023 09:21:09 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.67849.1679563261471162841
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Mar 2023 02:21:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=kUDwXmzj;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id AD58E40014;
	Thu, 23 Mar 2023 09:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679563260;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0+TpbgbwXq/6oxGBtLwKzzVW2QCXls1B26txe6N4HaQ=;
	b=kUDwXmzjN+kVl/Jv7BuF+fupN0BqX1iUptySe1DuopGw1ITJXkQrSQ58mgVg3axrMdILtP
	zBWj6uIv7eArWj8drYTpkuBapH2BVbcAX5Wiq9AfKBRXVyQ75VFEOfEqCPk96avRPkYifK
	JRVqfthiwGzWFa6eLsQmEdwyBUBx9tc9Fp3NFzpul/T2swrOmGC7PBPZr5nun6vDVlef4g
	INYGapNCkG7KoKnBAI8sQ3rN6Y+zKtExzOQWebA4cf2NhbmNlDeIayY85mIuhbmf/nPV55
	5E/3JRQ3Ixn8mzvXBnH+fvIdscIMOP/6dk8nnCnOqMxoKLR6j7/8vOIrm7xzvA==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 1/3] scripts/test_utils: test master nightly build case
Date: Thu, 23 Mar 2023 10:20:55 +0100
Message-Id: <20230323092057.17918-2-alexis.lothore@bootlin.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59496

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/test_utils.py | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/scripts/test_utils.py b/scripts/test_utils.py
index ab91e3b..d02e9b2 100755
--- a/scripts/test_utils.py
+++ b/scripts/test_utils.py
@@ -99,6 +99,16 @@ class TestGetComparisonBranch(unittest.TestCase):
         self.assertEqual(
             comparebranch, None,  msg="Arbitrary repo/branch should not return any specific comparebranch")
 
+    def test_master_nightly(self):
+        repo = "ssh://git@push.yoctoproject.org/poky"
+        branch = "master"
+        basebranch, comparebranch = utils.getcomparisonbranch(
+            self.TEST_CONFIG, repo, branch)
+        self.assertEqual(
+            basebranch, "master", msg="Master branch should be returned")
+        self.assertEqual(
+            comparebranch, None,  msg="No specific comparebranch should be returned")
+
 
 if __name__ == '__main__':
     unittest.main()
-- 
2.40.0


