Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4E7C76195
	for <webhook@archiver.kernel.org>; Mon, 13 Mar 2023 14:52:05 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web11.22128.1678719122529866222
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Mar 2023 07:52:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=BLYWEyWs;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id D49FBE0004;
	Mon, 13 Mar 2023 14:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1678719120;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=A+FrkKcdBpC87mI3ZGfWD4RZfmsAli3EEomIj+j9tW0=;
	b=BLYWEyWsF1oc/+YfX1B/pxeRHdsDvPB//fjPm7gpzD9t3bWC0M6jBub04Hx1jc3sqC68sE
	2UuzlAlFQqobD6brJkOT9LkntJ5/BCKJ+cx3Ti5ZDQvoh/nDSHFp83IcbgHft8Y44w9sBp
	qnf/KprUuSsYfQESXrKcIfx0ifIiq+lU7FR5Qo9xYajVENAeMdp7JHmc8D8Hw2LR6MCP1n
	4BovxZhKl4ys7G1CJYVRSSQftnBEMGh6mJ+D+gJVvjlDkEG3YRnQObJT7vab+0vjDGtxQf
	MVClCyvX3XZu03ogFXGno1jMGUXiQoR5+fLFSXhkPNv5tDboofxu1nlFCkfprA==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org,
	alexandre.belloni@bootlin.com
Cc: thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 0/8] fix regression reports generation on "master-next" branches
Date: Mon, 13 Mar 2023 15:51:37 +0100
Message-Id: <20230313145145.2574842-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Mar 2023 14:52:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59410

From: Alexis Lothoré <alexis.lothore@bootlin.com>

This series fixes regression report generation on "next" branches, as raised in
[1].

The first five patches are preparatory updates for the real fix, being either
refactoring, cleanup or unit tests addition to better understand how integration
branches are used in send-qa-email.
The proper fix is in 6th commit, followed by corresponding tests
Finally, the last commit add Alexandre's "next" branch as "fork" branches to
enable regression reports generation when testing patches, as suggested in [1]
too.

Since patch testing branches are force-pushed on a regular basis, it is quite
difficult to get a relevant testing scenario, so this series has been tested by
faking SHA1 in yocto_testresults_query to match some master-next results in
yocto-testresults at the time of testing this series. I would gladly take
feedback about this series running for real in a master-next branch

[1] https://lists.yoctoproject.org/g/yocto/message/59067

Alexis Lothoré (8):
  scripts/utils: add unit tests for getcomparisonbranch
  scripts/send-qa-email: remove unused variable
  scripts/send-qa-email: invert boolean logic for release check
  scripts/send-qa-email: protect is_release_version from None value
  scripts/send-qa-email: add tests for is_release_version
  scripts/send-qa-email: fix testing branches regression reporting
  scripts/test_send_qa_email.py: add tests for base/target pair guessing
  config: flag A. Belloni master-next branch as testing branch

 config.json                   |   2 +-
 scripts/send_qa_email.py      |  34 +++++++----
 scripts/test_send_qa_email.py |  31 ++++++++++
 scripts/test_utils.py         | 104 ++++++++++++++++++++++++++++++++++
 4 files changed, 158 insertions(+), 13 deletions(-)
 create mode 100755 scripts/test_utils.py

-- 
2.39.2


