Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9324CC7618E
	for <webhook@archiver.kernel.org>; Mon, 13 Mar 2023 14:52:05 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web10.21571.1678719122954571111
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Mar 2023 07:52:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=W8Av6gF8;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 590CEE0010;
	Mon, 13 Mar 2023 14:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1678719120;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FFx35Ein/ZrG2H6qSttSSWg4RskjVbK72VK3p3SZRH0=;
	b=W8Av6gF8t+sg2bPkeyET9R6Ku2DGky1C6D6lJEdZzfINFSbIDsbwgwg7JoLFEgClJqUThk
	KwJlQUmUBWCqusGz232DZ8W3HXLg+3Ekxl1OiaSr9WiF39C42ISsJwJNjSsbLMSEUngjhm
	pNlJdIOtvohogCDiuCnH0WzgN1CFdLjV2HUlpCCCzKNJJ+5R5fPCRkVdf0hKlzCjVV1CBX
	m32ZNFn07ZYE/VyyFh5Xwk/IAR5zZ+oIuJ5+5jY/Afx3B4QD3x/sZ3u9s+zb3E5EQ5048y
	wdbWOVep7fTGNGr9q7Rip6fUsmnrVf+V+n/sqwrqQAjK9BTs6goGGhRGKzy7XQ==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org,
	alexandre.belloni@bootlin.com
Cc: thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 1/8] scripts/utils: add unit tests for getcomparisonbranch
Date: Mon, 13 Mar 2023 15:51:38 +0100
Message-Id: <20230313145145.2574842-2-alexis.lothore@bootlin.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59412

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/test_utils.py | 104 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 104 insertions(+)
 create mode 100755 scripts/test_utils.py

diff --git a/scripts/test_utils.py b/scripts/test_utils.py
new file mode 100755
index 0000000..ab91e3b
--- /dev/null
+++ b/scripts/test_utils.py
@@ -0,0 +1,104 @@
+#!/usr/bin/env python3
+
+import os
+import unittest
+import utils
+
+
+class TestGetComparisonBranch(unittest.TestCase):
+    TEST_CONFIG = {
+        "BUILD_HISTORY_DIRECTPUSH": [
+            "poky:morty",
+            "poky:pyro",
+            "poky:rocko",
+            "poky:sumo",
+            "poky:thud",
+            "poky:warrior",
+            "poky:zeus",
+            "poky:dunfell",
+            "poky:gatesgarth",
+            "poky:hardknott",
+            "poky:honister",
+            "poky:kirkstone",
+            "poky:langdale",
+            "poky:master"
+        ], "BUILD_HISTORY_FORKPUSH": {
+            "poky-contrib:ross/mut": "poky:master",
+            "poky:master-next": "poky:master",
+            "poky-contrib:abelloni/master-next": "poky:master"
+        }
+    }
+
+    def test_release_master(self):
+        repo = "ssh://git@push.yoctoproject.org/poky"
+        branch = "master"
+        basebranch, comparebranch = utils.getcomparisonbranch(
+            self.TEST_CONFIG, repo, branch)
+        self.assertEqual(
+            basebranch, "master", msg="Repo/branch pair present in BUILD_HISTORY_DIRECTPUSH must return corresponding base branch")
+        self.assertEqual(
+            comparebranch, None, msg="Repo/branch pair present in BUILD_HISTORY_DIRECTPUSH must return corresponding compare branch")
+
+    def test_release_kirkstone(self):
+        repo = "ssh://git@push.yoctoproject.org/poky"
+        branch = "kirkstone"
+        basebranch, comparebranch = utils.getcomparisonbranch(
+            self.TEST_CONFIG, repo, branch)
+        self.assertEqual(basebranch, "kirkstone",
+                         msg="Repo/branch pair present in BUILD_HISTORY_DIRECTPUSH must return corresponding base branch")
+        self.assertEqual(
+            comparebranch, None, msg="Repo/branch pair present in BUILD_HISTORY_DIRECTPUSH must return corresponding compare branch")
+
+    def test_release_langdale(self):
+        repo = "ssh://git@push.yoctoproject.org/poky"
+        branch = "langdale"
+        basebranch, comparebranch = utils.getcomparisonbranch(
+            self.TEST_CONFIG, repo, branch)
+        self.assertEqual(basebranch, "langdale",
+                         msg="Repo/branch pair present in BUILD_HISTORY_DIRECTPUSH must return corresponding base branch")
+        self.assertEqual(
+            comparebranch, None, msg="Repo/branch pair present in BUILD_HISTORY_DIRECTPUSH must return corresponding compare branch")
+
+    def test_master_next(self):
+        repo = "ssh://git@push.yoctoproject.org/poky"
+        branch = "master-next"
+        basebranch, comparebranch = utils.getcomparisonbranch(
+            self.TEST_CONFIG, repo, branch)
+        self.assertEqual(basebranch, "master-next",
+                         msg="Repo/branch pair present in BUILD_HISTORY_FORKPUSH must return corresponding base branch")
+        self.assertEqual(comparebranch, "master",
+                         msg="Repo/branch pair present in BUILD_HISTORY_FORKPUSH must return corresponding compare branch")
+
+    def test_abelloni_master_next(self):
+        repo = "ssh://git@push.yoctoproject.org/poky-contrib"
+        branch = "abelloni/master-next"
+        basebranch, comparebranch = utils.getcomparisonbranch(
+            self.TEST_CONFIG, repo, branch)
+        self.assertEqual(basebranch, "abelloni/master-next",
+                         msg="Repo/branch pair present in BUILD_HISTORY_FORKPUSH must return corresponding base branch")
+        self.assertEqual(comparebranch, "master",
+                         msg="Repo/branch pair present in BUILD_HISTORY_FORKPUSH must return corresponding compare branch")
+
+    def test_ross_master_next(self):
+        repo = "ssh://git@push.yoctoproject.org/poky-contrib"
+        branch = "ross/mut"
+        basebranch, comparebranch = utils.getcomparisonbranch(
+            self.TEST_CONFIG, repo, branch)
+        self.assertEqual(basebranch, "ross/mut",
+                         msg="Repo/branch pair present in BUILD_HISTORY_FORKPUSH must return corresponding base branch")
+        self.assertEqual(comparebranch, "master",
+                         msg="Repo/branch pair present in BUILD_HISTORY_FORKPUSH must return corresponding compare branch")
+
+    def test_arbitrary_branch(self):
+        repo = "ssh://git@push.yoctoproject.org/poky-contrib"
+        branch = "akanavin/package-version-updates"
+        basebranch, comparebranch = utils.getcomparisonbranch(
+            self.TEST_CONFIG, repo, branch)
+        self.assertEqual(
+            basebranch, None, msg="Arbitrary repo/branch should not return any specific basebranch")
+        self.assertEqual(
+            comparebranch, None,  msg="Arbitrary repo/branch should not return any specific comparebranch")
+
+
+if __name__ == '__main__':
+    unittest.main()
-- 
2.39.2


