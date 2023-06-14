Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF3EDEB64DD
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 08:56:13 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.6780.1686732964909654310
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 01:56:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=djMxmyys;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexis.lothore@bootlin.com)
X-GND-Sasl: alexis.lothore@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1686732963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OTOsnlFowihKiBIBoi1/E2d78r/pL3M6QQdWpqk7tYQ=;
	b=djMxmyysLWZCbKd7fbRIKN9yFGXHHHFJDMpzqnUi7+OW4TodFeOpDjBAZmiuJ721cJrgJ9
	39dGhnol3vneQ4n6QUumq9Vs/MkXlDqLlc9eZgQYDTrCIOvXhgzzoFbgy5kgNjWRlxxn/B
	nMCpyN6lxxQoFMPZYfASBAb26Z/nGZofVxuwiYZILgA7O9oqgX/u7VcWdgKH7gm7nLz5wR
	DS9w2oj5uhA/zguRNl4daBwnPaLuwXvgagpx00iYYZgm2pG9kMfiZDQ/dNSNAP7k9VrUhm
	13Xg69a2G+lbeilabeYg9aqjEbXNLh9gAgZYdDxkrGJdBim3QTIBIbADXVBiQA==
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 515E760013;
	Wed, 14 Jun 2023 08:56:03 +0000 (UTC)
From: alexis.lothore@bootlin.com
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 2/3] scripts/send-qa-email: print warning when test results are not stored
Date: Wed, 14 Jun 2023 10:56:13 +0200
Message-ID: <20230614085614.27951-3-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230614085614.27951-1-alexis.lothore@bootlin.com>
References: <20230614085614.27951-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 08:56:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60290

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Tests results push command depends on basebranch and comparebranch
variables, which are computed based on config.json content. If this file is
not in sync with current release branch, tests results will be properly
stored in git directory but not pushed onto test results server. Since we
are able to detect this scenario, print at least a warning, without
breaking current build since it could be a release

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index 8a8454d09c2f..fc7fccc6f6f7 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -159,6 +159,8 @@ def send_qa_email():
             elif basebranch:
                 subprocess.check_call(["git", "push", "--all"], cwd=tempdir)
                 subprocess.check_call(["git", "push", "--tags"], cwd=tempdir)
+            elif is_release_version(args.release) and not comparebranch and not basebranch:
+                log.warning("Test results not published on release version. Faulty AB configuration ?")
 
             regression_base, regression_target = get_regression_base_and_target(basebranch, comparebranch, args.release, targetrepodir)
             if regression_base and regression_target:
-- 
2.41.0


