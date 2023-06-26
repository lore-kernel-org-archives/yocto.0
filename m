Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A959EB64DA
	for <webhook@archiver.kernel.org>; Mon, 26 Jun 2023 08:05:42 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web10.2968.1687766739019175651
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jun 2023 01:05:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=euIFI9Xn;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: alexis.lothore@bootlin.com)
X-GND-Sasl: alexis.lothore@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1687766737;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wBXZ+sofh/rxamRCCj5myE3gf0FiT93UJNw3F/hzR10=;
	b=euIFI9Xn6JjkAkVkIiNTn2LdebuJ4iTz7xJ/5HfQV3Ir+Clp1GG4UyyELK+uimjvyCHpHv
	6LgwCC+4zwluodhw6jQumNaMFj99PtlnuZ6iIoHztEVbcmMhpHrHlTpGPZTUGRYtn9EBau
	MbYSFnZUMgz7bV0NjKXBMz98sco/qT0ffpoBLMI4zFY2rWrch6ZTlpBQ0CAAxHAPl+j66t
	2ekABISQoj0aWQd9urV5oVC5+aG/v+b0ARfOLkdekmniMLNIXpgqHAgyT9ELnkGBnvQbi8
	zsgkQrn/Y5RJmjwyFOS7fWZr9DMu2meKwEUZ1FvCAJqpvvhkzQ3HfOXpLA5wdw==
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 18D641C000D;
	Mon, 26 Jun 2023 08:05:37 +0000 (UTC)
From: alexis.lothore@bootlin.com
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 1/3] scripts/utils.py: replace BUILD_HISTORY_DIRECTPUSH with hardcoded condition
Date: Mon, 26 Jun 2023 10:05:58 +0200
Message-ID: <20230626080600.17359-2-alexis.lothore@bootlin.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60442

From: Alexis Lothoré <alexis.lothore@bootlin.com>

It has been observed that when a new release branch is created, it is quite
easy to forget to update the BUILD_HISTORY_DIRECTPUSH variable, which leads
to failures in autobuilder like test results not being pushed.
Replace the BUILD_HISTORY_DIRECTPUSH usage with a hardcoded condition which
validates any branch in poky representing a "main" branch, i.e all branches
not ending in "-next"

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
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
2.41.0


