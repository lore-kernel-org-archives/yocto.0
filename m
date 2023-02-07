Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2741C6379F
	for <webhook@archiver.kernel.org>; Tue,  7 Feb 2023 14:12:31 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web10.84071.1675779147229321671
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Feb 2023 06:12:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=pzZsFYGm;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 2C6B1240008;
	Tue,  7 Feb 2023 14:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1675779145;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=am/uGiBL8aJ2BUzc0N2n6muGgkew+ERb45bMutj6Fwc=;
	b=pzZsFYGm+ZYAGe8U17e0vIL0mMFy41f5Uh4ieyY8AMUOVbMACkc7Sr+aZ1ezJUh6/EuULI
	MklL3umfCC98tASaCGKKe1pswVDf61lsV0N1EeYhNuJK+ugzNmnwxGZGdUqBIMyUxMBpBt
	n17sYixeqlq0PwCK3tfla36sIwnaxUJ8vyMiXwqtghYRz+e+zOwVRS1DJ6Br0+nRMr3o6N
	mnfKN4bn1FV3YnDB2oWfXfuuFf5B5CgG8cs+mUnwFhbKhNjim5XbdDygdEwMDmpW8RZonP
	hh8Kp4F542WzBTYYRB0EXLrDoH/svg/+VaCk5EJw6Cl22Ja7i7iGKsg4KpBaqw==
From: Alexis Lothore <alexis.lothore@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [autobuilder][PATCH 3/3] scripts/send-qa-email: add target and base revisions in regression report
Date: Tue,  7 Feb 2023 15:12:17 +0100
Message-Id: <20230207141217.33892-4-alexis.lothore@bootlin.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59191

Current regression reports do not contain information about versions compared
when generating reports. While it is still possible to get the information by
searching the autobuilder log, it is not convenient. Moreover, future
developments will allow to generate multiple reports (with different bases for
comparison) in a single build.
As a consequence, embed target and base revisions in the report header

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
Signed-off-by: Alexis Lothore <alexis.lothore@bootlin.com>
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


