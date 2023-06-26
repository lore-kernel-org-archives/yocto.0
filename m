Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96910C0015E
	for <webhook@archiver.kernel.org>; Mon, 26 Jun 2023 08:05:42 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web10.2970.1687766739468767443
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jun 2023 01:05:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=jZeBZ6QO;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: alexis.lothore@bootlin.com)
X-GND-Sasl: alexis.lothore@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1687766738;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PNGJsIqs0Rit57xLPCINTCDHfJXtsNyBPD3uhxayhtk=;
	b=jZeBZ6QOec7ntP7ykxFSOOJpFUlY7FR/YDXbKN6LpkT1w4H183EHspP/QZXRY3qd/TdtUX
	WKw3tmtS9wGYLvAGJt62HnIYHGUOlh7F0SwvWk8wBv4/qw+bif1B/YQW/zmUZmbx525CaL
	p9YdGDGOJFFW8EXZCsZ6bUliemOU7qxWHao2fSOLHvwibIMoD4drFAZxwuWJ490EER1GNj
	fW2KogJgIpRhmsSKY2jlGdZWnl5VSqYnGDxljP5dvxdq5cV9HCKi93b+nC7zLBydbrOjDU
	8kP8Vy6tQ0dLaSSZJVaXrU/WPLQ3HecJpumK4DVYAlb4F+eReRwu7tbO0/8/8g==
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id C5E561C000F;
	Mon, 26 Jun 2023 08:05:37 +0000 (UTC)
From: alexis.lothore@bootlin.com
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 3/3] scripts/test_utils.py: update test after BUILD_HISTORY_DIRECTPUSH removal
Date: Mon, 26 Jun 2023 10:06:00 +0200
Message-ID: <20230626080600.17359-4-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230626080600.17359-1-alexis.lothore@bootlin.com>
References: <20230626080600.17359-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 08:05:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60443

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Update getcomparisonbranch unit tests by removing BUILD_HISTORY_DIRECTPUSH
entry in fake configuration

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/test_utils.py | 29 +++++++----------------------
 1 file changed, 7 insertions(+), 22 deletions(-)

diff --git a/scripts/test_utils.py b/scripts/test_utils.py
index d02e9b2a5bb3..d149dc946ccd 100755
--- a/scripts/test_utils.py
+++ b/scripts/test_utils.py
@@ -7,22 +7,7 @@ import utils
 
 class TestGetComparisonBranch(unittest.TestCase):
     TEST_CONFIG = {
-        "BUILD_HISTORY_DIRECTPUSH": [
-            "poky:morty",
-            "poky:pyro",
-            "poky:rocko",
-            "poky:sumo",
-            "poky:thud",
-            "poky:warrior",
-            "poky:zeus",
-            "poky:dunfell",
-            "poky:gatesgarth",
-            "poky:hardknott",
-            "poky:honister",
-            "poky:kirkstone",
-            "poky:langdale",
-            "poky:master"
-        ], "BUILD_HISTORY_FORKPUSH": {
+       "BUILD_HISTORY_FORKPUSH": {
             "poky-contrib:ross/mut": "poky:master",
             "poky:master-next": "poky:master",
             "poky-contrib:abelloni/master-next": "poky:master"
@@ -35,9 +20,9 @@ class TestGetComparisonBranch(unittest.TestCase):
         basebranch, comparebranch = utils.getcomparisonbranch(
             self.TEST_CONFIG, repo, branch)
         self.assertEqual(
-            basebranch, "master", msg="Repo/branch pair present in BUILD_HISTORY_DIRECTPUSH must return corresponding base branch")
+            basebranch, "master", msg="Release branch in poky must return corresponding base branch")
         self.assertEqual(
-            comparebranch, None, msg="Repo/branch pair present in BUILD_HISTORY_DIRECTPUSH must return corresponding compare branch")
+            comparebranch, None, msg="Release branch in poky must return corresponding compare branch")
 
     def test_release_kirkstone(self):
         repo = "ssh://git@push.yoctoproject.org/poky"
@@ -45,9 +30,9 @@ class TestGetComparisonBranch(unittest.TestCase):
         basebranch, comparebranch = utils.getcomparisonbranch(
             self.TEST_CONFIG, repo, branch)
         self.assertEqual(basebranch, "kirkstone",
-                         msg="Repo/branch pair present in BUILD_HISTORY_DIRECTPUSH must return corresponding base branch")
+                         msg="Release branch in poky must return corresponding base branch")
         self.assertEqual(
-            comparebranch, None, msg="Repo/branch pair present in BUILD_HISTORY_DIRECTPUSH must return corresponding compare branch")
+            comparebranch, None, msg="Release branch in poky must return corresponding compare branch")
 
     def test_release_langdale(self):
         repo = "ssh://git@push.yoctoproject.org/poky"
@@ -55,9 +40,9 @@ class TestGetComparisonBranch(unittest.TestCase):
         basebranch, comparebranch = utils.getcomparisonbranch(
             self.TEST_CONFIG, repo, branch)
         self.assertEqual(basebranch, "langdale",
-                         msg="Repo/branch pair present in BUILD_HISTORY_DIRECTPUSH must return corresponding base branch")
+                         msg="Release branch in poky must return corresponding base branch")
         self.assertEqual(
-            comparebranch, None, msg="Repo/branch pair present in BUILD_HISTORY_DIRECTPUSH must return corresponding compare branch")
+            comparebranch, None, msg="Release branch in poky must return corresponding compare branch")
 
     def test_master_next(self):
         repo = "ssh://git@push.yoctoproject.org/poky"
-- 
2.41.0


