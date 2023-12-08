Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42A07C10DCE
	for <webhook@archiver.kernel.org>; Fri,  8 Dec 2023 21:59:36 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web10.24922.1702072771161494345
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Dec 2023 13:59:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=GtsltXhG;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id A6BFE20004;
	Fri,  8 Dec 2023 21:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702072769;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GFSHK39PXKGsEFlUPyOXcl96Jj1eK96KSZMLF671p7g=;
	b=GtsltXhGOqlHvKnbGgnf6i7MlpKdo8CyR8s59dNohwLoVCdb3SROU9ieWMqDSvaMT4kvH9
	U9Ec29Jbg1OSskKsgmetzbbm5D2AmsVSxnX4yHjPsIq7IaL7Up5eTqBTrh0aUpPjhrV38L
	5mz3uGEynEdV5sMqyGC+LRezf4H4+c2ZNLj0L6DFOkpMug+2J4fd72cARt68CAmmoEZniJ
	wdyytwNo2zoZiIDkMr4nn/i9Hu6Yc6axdof7pJblZ5RF4LM5WCPusMt6f1J3/VK/uxYKmy
	P5jWIJkCi0P7zCoToII4XoI+/H302ct2/s/sPyakWwZ8gPLgxVqzD6KXeTLj3Q==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][mickledore][PATCH 1/3] scripts/utils.py: replace BUILD_HISTORY_DIRECTPUSH with hardcoded condition
Date: Fri,  8 Dec 2023 22:59:13 +0100
Message-ID: <20231208215915.225182-2-alexis.lothore@bootlin.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61846

From: Alexis Lothoré <alexis.lothore@bootlin.com>

It has been observed that when a new release branch is created, it is quite
easy to forget to update the BUILD_HISTORY_DIRECTPUSH variable, which leads
to failures in autobuilder like test results not being pushed.
Replace the BUILD_HISTORY_DIRECTPUSH usage with a hardcoded condition which
validates any branch in poky representing a "main" branch, i.e all branches
not ending in "-next"

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/utils.py | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/scripts/utils.py b/scripts/utils.py
index 444b3ab55092..36b3e81bfc94 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -19,6 +19,15 @@ import fnmatch
 import glob
 import fcntl
 
+
+def is_a_main_branch(reponame, branchname):
+    """
+    Checks if target repo/branch combo represent a main branch. This
+    includes master and release branches in poky, while excluding "next"
+    branches
+    """
+    return reponame == "poky" and not branchname.endswith("-next")
+
 #
 # Check if config contains all the listed params
 #
@@ -212,7 +221,7 @@ def getbuildhistoryconfig(ourconfig, builddir, target, reponame, branchname, ste
                 reponame = reponame.rsplit("/", 1)[1]
             if reponame.endswith(".git"):
                 reponame = reponame[:-4]
-            if (reponame + ":" + branchname) in getconfig("BUILD_HISTORY_DIRECTPUSH", ourconfig):
+            if is_a_main_branch(reponame, branchname):
                 base = reponame + ":" + branchname
             if (reponame + ":" + branchname) in getconfig("BUILD_HISTORY_FORKPUSH", ourconfig):
                 base = getconfig("BUILD_HISTORY_FORKPUSH", ourconfig)[reponame + ":" + branchname]
@@ -392,7 +401,7 @@ def getcomparisonbranch(ourconfig, reponame, branchname):
             comparerepo, comparebranch = base.split(":")
             print("Comparing to %s\n" % (comparebranch))
             return branchname, comparebranch
-    if (reponame + ":" + branchname) in getconfig("BUILD_HISTORY_DIRECTPUSH", ourconfig):
+    if is_a_main_branch(reponame, branchname):
         return branchname, None
     return None, None
 
-- 
2.42.1


