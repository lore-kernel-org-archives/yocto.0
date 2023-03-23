Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51641C6FD1C
	for <webhook@archiver.kernel.org>; Thu, 23 Mar 2023 09:21:09 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.68202.1679563262377033610
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Mar 2023 02:21:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=gkxqHdSk;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id AD6654000A;
	Thu, 23 Mar 2023 09:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679563261;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZzFIquftOijHu+VKC9fzhDskr9/XGtEWe7iCP/x5I6Q=;
	b=gkxqHdSk+926err6eTIwzvZBXsz74toc9KBj/oTG/cl6XSiEX494B1fMlXIH4NsWXfuSVp
	SqbV1i2xPPpZgegiHWkFQ0KjUw4ntkeFWqdMyAlYEqBerK52oY8J8rH+OZH3ThsDf+jNyB
	CLFAN4H0X4qM4w03hzePz/ZtWnyiqiSJ0H9/FvACx2+CBFWzjU8W6+YbMVthV9Ajxa57to
	2U1fiFgYM14d4K2ED05SA1bsOokZ8lNBXkoGTnu/Ofli/QGjXawyioHp6CJLN3bYtPSkJy
	VStyQSXt0ysGkhXj4750IZADPKG9t6Zrbiwc1pubeLcwM8Epjvft2I7YXg/2XA==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 3/3] scripts/send_qa_email: return previous tag when running a non-release master build
Date: Thu, 23 Mar 2023 10:20:57 +0100
Message-Id: <20230323092057.17918-4-alexis.lothore@bootlin.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59499

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Some nightly builders are configured in yocto-autobuilder2 to run master builds.
Those build parameters currently skip all branches of
get_regression_base_and_target, which then return None, while the caller
expects a base and target tuple

Set default behaviour to return previous tag as comparison base and passed
branch as target for such builds

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py      | 3 +++
 scripts/test_send_qa_email.py | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index 78e051a..4613bff 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -61,6 +61,9 @@ def get_regression_base_and_target(basebranch, comparebranch, release, targetrep
         # Basebranch/comparebranch is defined in config.json: regression reporting must be done against branches as defined in config.json
         return comparebranch, basebranch
 
+    #Default case: return previous tag as base
+    return get_previous_tag(targetrepodir, release), basebranch
+
 def generate_regression_report(querytool, targetrepodir, base, target, resultdir, outputdir):
     print(f"Comparing {target} to {base}")
 
diff --git a/scripts/test_send_qa_email.py b/scripts/test_send_qa_email.py
index ce0c6b7..974112a 100755
--- a/scripts/test_send_qa_email.py
+++ b/scripts/test_send_qa_email.py
@@ -48,6 +48,8 @@ class TestVersion(unittest.TestCase):
                                           "comparebranch": "master", "release": None}, "expected": ("master", "master-next")},
         {"name": "Fork Master Next", "input": {"basebranch": "ross/mut",
                                                "comparebranch": "master", "release": None}, "expected": ("master", "ross/mut")},
+        {"name": "Nightly a-quick", "input": {"basebranch": "master",
+                                               "comparebranch": None, "release": "20230322-2"}, "expected": ("LAST_TAG", "master")},
     ]
 
     def test_versions(self):
-- 
2.40.0


