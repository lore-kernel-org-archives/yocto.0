Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D5BFC46CC5
	for <webhook@archiver.kernel.org>; Fri,  8 Dec 2023 21:59:36 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web11.24566.1702072772641186723
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Dec 2023 13:59:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=nRs1iVC3;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 28A7E20005;
	Fri,  8 Dec 2023 21:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702072771;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3oy+Ly9wcCW1aaeixssH3thP+w+6tfq0odakzm0Wy6U=;
	b=nRs1iVC34YKJlGxcOHi9d1L+w4Z8+JnlVBmslLv8rkzvx8tgwBcL8cn5gqgZTeDPX3AJDH
	AxN7cINFXdsKNR0NiY1KMXRhbjYiD/rClWb4TV1/Mj6OfpQ3N2P267QhSnXusBrsTBHoUa
	qEKwIYG4csdFwURsfGQm7JFV7QUmnjqiUJrnuh/DffqU2EYfKAYCFYQURdBlUW/0zznTCm
	62M8usdIM72GB+kQfT5totiUG5MKWekjlqDUzZ7s8R4FSauI3izLa98BxQnUpjHoDIIfD9
	Gn6lzQ1rS9p0WYLqMV+jt/I74SSqCopItJvhXYbYEVv+AkcmD4ted9qru1664w==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][mickledore][PATCH 3/3]  scripts/test_utils.py: update test after BUILD_HISTORY_DIRECTPUSH removal
Date: Fri,  8 Dec 2023 22:59:15 +0100
Message-ID: <20231208215915.225182-4-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231208215915.225182-1-alexis.lothore@bootlin.com>
References: <20231208215915.225182-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexis.lothore@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Dec 2023 21:59:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61848

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Update getcomparisonbranch unit tests by removing BUILD_HISTORY_DIRECTPUSH
entry in fake configuration

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
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
2.42.1


