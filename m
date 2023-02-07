Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C8DC636CD
	for <webhook@archiver.kernel.org>; Tue,  7 Feb 2023 14:12:31 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web10.84070.1675779145146881512
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Feb 2023 06:12:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=NmOKmhAH;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 39863240005;
	Tue,  7 Feb 2023 14:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1675779143;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YvGw4+WlYIg4t1KJBUqVcUgG9EW2bve9KDwmeQBwq+s=;
	b=NmOKmhAHVKq0JbLkC1xN/WG8inFS4atYq6mleOYVX6dK9qzgnX0aW2ukQ/jc94f9Qs+aoq
	xffX0RdTLSesdMXmLi3VbbX/Pbv1l/v24jcOctd9Iv2/1YDfaLfDRY36gZNxgoZg5BPZ46
	Jb2wNnWs9m6ZJt5fOJ3YmW++tEGBE65wlJlBxWomxZ7aT1vqt12o28Qje6ijaiLdnOGvWJ
	Q+OYZg2fole87SGbNytRC01aUe1Yl1axrq1fYRH99NLnAaYib3OIbfmj9o2CilC5u51iRc
	cHi3QgZ/9BYXaQLZiIDYmzz5JyWIcjQjDaCOxqTQRLLyp7Zo9o9cLOgAcvgL4A==
From: Alexis Lothore <alexis.lothore@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [autobuilder][PATCH 1/3] scripts/send-qa-email: force current revision fetch
Date: Tue,  7 Feb 2023 15:12:15 +0100
Message-Id: <20230207141217.33892-2-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230207141217.33892-1-alexis.lothore@bootlin.com>
References: <20230207141217.33892-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Feb 2023 14:12:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59189

If we try to run send-qa-email to simulate past releases (for example, for
development or debugging), the execution will very likely fail because the
target revision to examine (ie: the poky revision) is too old, and as a
consequence is not contained in the testresults shallow clone anymore (because
testsresults history keeps moving forward as builds are triggered on
autobuilder). As a consequence, force-fetch the "target" revision, as it is
already done for the "base" revision

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
Signed-off-by: Alexis Lothore <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index 199fe4e..f8ebe34 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -75,6 +75,7 @@ def generate_regression_report(resulttool, targetrepodir, basebranch, resultdir,
         running resulttool
         """
         fetch_testresults(resultdir, baserevision)
+        fetch_testresults(resultdir, comparerevision)
         regreport = subprocess.check_output([resulttool, "regression-git", "-B", basebranch, "--commit", baserevision, "--commit2", comparerevision, resultdir])
         with open(outputdir + "/testresult-regressions-report.txt", "wb") as f:
            f.write(regreport)
-- 
2.39.1


