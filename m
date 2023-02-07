Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BA12C636CD
	for <webhook@archiver.kernel.org>; Tue,  7 Feb 2023 15:29:52 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web10.86140.1675783782137663758
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Feb 2023 07:29:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=a8F4BVJD;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 8C2551C0004;
	Tue,  7 Feb 2023 15:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1675783780;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tQV4cxnhSSHAa+qcquwpbKfsUuyY89Na5nIRtcYUHDM=;
	b=a8F4BVJDcpfpRo940ruOTXtAIcnK2DrjiXNickQMv5ynX6EVkDm9y2IU5BIHQk64GY2313
	iGyrnRTcK/7RUYiD1io5Q4H7KAuxdAmS9j4h2aDL7GzzCbtVA+eORFf1G4yQI0WDRjSBwX
	CewbbD/itsZ8atz+nC5uCW/qN6ivWmHc3Bvb8kCc2mKQtpVtJnEzEi19fbhNGfhMeKLXbK
	ezLTTVJTeYJcq6X/0E6rXBhIlArBt3jyBw0GTyGt+bHyT7MOJC5AZ0bf2amQt//qjMqHCX
	xHm/FwS+F6Vn1UyuR+G8NJLh8WQ2eRCsM+ULpqTtFoaYqZ5UVrHWZBvkiLjYOA==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [autobuilder][PATCH v2 3/3] scripts/send-qa-email: add target and base revisions in regression report
Date: Tue,  7 Feb 2023 16:29:49 +0100
Message-Id: <20230207152949.43487-4-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230207152949.43487-1-alexis.lothore@bootlin.com>
References: <20230207152949.43487-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Feb 2023 15:29:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59198

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Current regression reports do not contain information about versions compared
when generating reports. While it is still possible to get the information by
searching the autobuilder log, it is not convenient. Moreover, future
developments will allow to generate multiple reports (with different bases for
comparison) in a single build.
As a consequence, embed target and base revisions in the report header

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 scripts/send_qa_email.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index b87e822..e2d7284 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -78,6 +78,10 @@ def generate_regression_report(resulttool, targetrepodir, basebranch, resultdir,
         fetch_testresults(resultdir, comparerevision)
         regreport = subprocess.check_output([resulttool, "regression-git", "-B", basebranch, "--commit", baserevision, "--commit2", comparerevision, resultdir])
         with open(outputdir + "/testresult-regressions-report.txt", "wb") as f:
+           f.write(str.encode("========================== Regression report ==============================\n"))
+           f.write(str.encode(f'{"=> Target:": <16}{basebranch: <16}({comparerevision})\n'))
+           f.write(str.encode(f'{"=> Base:": <16}{baseversion: <16}({baserevision})\n'))
+           f.write(str.encode("===========================================================================\n\n"))
            f.write(regreport)
     except subprocess.CalledProcessError as e:
         error = str(e)
-- 
2.39.1


