Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12026C636CC
	for <webhook@archiver.kernel.org>; Wed, 15 Feb 2023 10:25:56 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web10.12035.1676456745380271942
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Feb 2023 02:25:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=K5mdotIs;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id A01C3FF804
	for <yocto@lists.yoctoproject.org>; Wed, 15 Feb 2023 10:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1676456743;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=v4Jr4lM1uK+zL1aEvqLo+VDowDliC2+14g96OjPWkcE=;
	b=K5mdotIs0X63ikyZU9zVHc5ANG1nxdE3tqEi4KvGkrFnoUPbq6nUlsMixcKkwiaQWG6ooN
	CTpsYXjPHDrXqsLDOCfRY2cGitpKpf7LwqYV0x8MlDL5UZvCJhMkxCjOIso6enW1cbiYV6
	T0ApGATlBxe6XEf4Bg6VFgmP+VhGS0GCVKTuj9Tn1jLJsGQH9T+E8kddtPQ8eJVfPHfPP/
	bpyOMlj4ihHO2UpX0iFrr17bEF8fTFRRLqZlXaK4+68SkxyYX8SUb9cmaubBzvwpckgqhT
	WAT54twHQS8qscNSDsUPEn3llty8nRAodFwQ9GzAiuoXeU/ltYHjfcx1Xk3pNw==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH 1/1] scripts/prepare-shared-repos: fix minor typo in autobuilder logs
Date: Wed, 15 Feb 2023 11:25:52 +0100
Message-Id: <20230215102552.23604-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Feb 2023 10:25:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59232

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Minor typo observed when cheking the "Prepared shared repository" step logs in
autobuilder web interface:

====================================================================================================
Intially fetching repo poky (1675810261.1)
====================================================================================================

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/prepare-shared-repos | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/prepare-shared-repos b/scripts/prepare-shared-repos
index 2a9f144..1b75652 100755
--- a/scripts/prepare-shared-repos
+++ b/scripts/prepare-shared-repos
@@ -41,7 +41,7 @@ with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/home/pokybuil
         # gplv2 is no longer built/tested in master
         if repo == "meta-gplv2":
             continue
-        utils.printheader("Intially fetching repo %s" % repo)
+        utils.printheader("Initially fetching repo %s" % repo)
         # shallow clones disabled as it doesn't work correctly with revision numbers in the result repo leading to release build failures.
         if True or args.publish_dir:
             utils.fetchgitrepo(tempdir, repo, repos[repo], stashdir)
-- 
2.39.1


