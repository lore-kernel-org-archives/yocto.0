Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1A22C636D6
	for <webhook@archiver.kernel.org>; Tue,  7 Feb 2023 14:12:31 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web11.84294.1675779143893666424
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Feb 2023 06:12:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=QCnVIHe0;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 9CB78240013;
	Tue,  7 Feb 2023 14:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1675779141;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=I4/sLzGNh5YL6qu0kHW2NrglgYMPyPQrsOUvg9jynLw=;
	b=QCnVIHe0cEKdEA+RySAlEinNwrYN8nGwY0yybO/yHW8H+gKUtNWQMEvNuVGiIasDsI/uFr
	4ocn6S5RGcE9ZZE+tBov/JBWzE0754kpFq5NE5pT0gDQiyfUvFwW4mR9S5ZGUNwW6PcJBs
	BZ5lpWNzVzdgSlhZbFqDu7gcJDS7ZIGR3wDD+cj61tYrOJYCoQP9qX59ztuxNtfLNeTwcs
	Yo5Y00hc7kxxLfsUg+i966nqPqZLxhE80XCR8E+KITh2LuHyFeRrwEn3bD7k4qxJJZlLuG
	z2nuRL3w7YLqWXlk2VGsalKb6Rv0JMINUq85uK0WSyHKW+/9pXVJLByXsgLSgQ==
From: Alexis Lothore <alexis.lothore@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [autobuilder][PATCH 0/3] ease send-qa-email usage with older history
Date: Tue,  7 Feb 2023 15:12:14 +0100
Message-Id: <20230207141217.33892-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Feb 2023 14:12:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59188

Hello,
this minor patch series bring minor fixes into send-qa-email to ease
development/debugging in it:
- fetching current build test results works well in CI builds because we are
  sure that the build results will be in the 5 upper commits of testsresults
  repository shallow clone (because it has been pushed just before preparing the
  regression report). It is not true when trying to run send-qa-email offline on
  older revisions (for development, debugging or improvement of scripting), so
  we need to force-fetch the target revision as it is done currently for the
  base revision. As a consequence, this new behaviour allows to make even more
  "shallow" clones of testresults since all needed data will be force-fetched
- When downloading a test regression report on official release webserver, we do
  not have information about what base have been used or what is the exact
  tested revision (at least, without checking the corresponding build logs on
  autobuilder). So I propose to add this information at the top of each
  regression report, making it look like this:

========================== Regression report ==============================
=> Target:      master          (5e249ec855517765f4b99e8039cb888ffa09c211)
=> Base:        4.2_M1          (4d19594b8bdacde6d809d3f2a25cff7c5a42295e)
===========================================================================

Match: oeselftest_almalinux-9.1_qemux86-64_20221208113119
       oeselftest_centos-8_qemux86-64_20230126230327
Match: oeselftest_debian-11_qemux86-64_20221208033325
       oeselftest_debian-11_qemux86-64_20230126150229
[...]

I assumed that no tool is currently trying to parse the regression reports, so
I chose arbitrarily the metadata format.

@Richard : on a side note, the broken From field in my previous emails was probably
due to an accent in my name, it should be fixed now. Please let me know if you
still have issues with this, in this case I will force the --from field.

Alexis Lothore (3):
  scripts/send-qa-email: force current revision fetch
  scripts/send-qa-email: reduce testresults shallow clone depth
  scripts/send-qa-email: add target and base revisions in regression
    report

 scripts/send_qa_email.py | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

-- 
2.39.1


