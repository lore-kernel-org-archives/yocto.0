Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C387C4167B
	for <webhook@archiver.kernel.org>; Fri,  8 Dec 2023 21:59:36 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web10.24920.1702072769669825372
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Dec 2023 13:59:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=pu6V13ng;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 80E2C20002;
	Fri,  8 Dec 2023 21:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702072767;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dS+S6JIg57O4Fa+GcyCMvM2v5kCD9BeOESouuRJGCKo=;
	b=pu6V13ngQCBXmvYTmr7fkCjCpFBK96KbXrKp4XXYaMeUUM6kg0AC0XlqsxWEs6rYFJtw5q
	A8grnzmU3xHRaGiTurxbVDLQNpKApvlhCXnU68xiZoIEEpfSToGt2IymQIbXq+++mXAuHV
	8f4rNIFX9a2/Ugy/FeDp66yPaOZZM1ZVs6GCojR8lPxOZbeD9QUDM8iBK9qhXyyJbZD6Xk
	G6kKXHBC9vzMa3aPakfpVq5RNaaWydHmhL2iJv0SprGCsleNpYUU+hqA5XADrZ9a9wbsMX
	9ZBd/IJXDyiG0W5whM6o6Cm5YCkDb/tWpNF+W1ik6E+qbX2+AvyteGuE3ppjRw==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][mickledore][PATCH 0/3] fix mickledore tests reports
Date: Fri,  8 Dec 2023 22:59:12 +0100
Message-ID: <20231208215915.225182-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.42.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexis.lothore@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Dec 2023 21:59:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61845

Hello,
mickledore release 4.2.4-rc3 suffered some tests reporting issue (tests
result not pushed, regression report not generated, etc). This is due to
the fact that the mickledore branch is not properly described in
BUILD_HISTORY_DIRECTPUSH in config.json. This issue has already received
the following fixes:
- add the missing mickledore entry
- then replaced the quickfix with a rework on BUILD_HISTORY_DIRECTPUSH to
  prevent the issue from occuring on any new future release branch

While those fixes made it to any release since Nanbield, we forgot to
backport it on yocto-autobuilder-helper, so the fixed issue still occurs on
this branch

This series brings the minimal set of patches to be backported **on top of
mickledore branch** on yocto-autobuilder-helper. This is from a bare
cherry-pick session with minimal conflict fixes, and commit tags untouched

Alexis Lothoré (3):
  scripts/utils.py: replace BUILD_HISTORY_DIRECTPUSH with hardcoded
    condition
  config.json: remove BUILD_HISTORY_DIRECTPUSH
  scripts/test_utils.py: update test after BUILD_HISTORY_DIRECTPUSH
    removal

 config.json           |  1 -
 scripts/test_utils.py | 29 +++++++----------------------
 scripts/utils.py      | 13 +++++++++++--
 3 files changed, 18 insertions(+), 25 deletions(-)

-- 
2.42.1


