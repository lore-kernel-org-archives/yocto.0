Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B67EB64D9
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 08:56:13 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.6778.1686732964241310195
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 01:56:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=gfPgFOql;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexis.lothore@bootlin.com)
X-GND-Sasl: alexis.lothore@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1686732962;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=WvwMR0Wv/bMASnNXnzcFZobZkhUvNXYNvGU78bpO/D4=;
	b=gfPgFOqlN6XUtCEdvStE8GHtzbrkEYeAn4jinmibmOtbv7dxAMgR1lM9t+VuALYQqZsQoa
	zmuupm86Im5K+fgVfTC0DvrHaceQs2aTGFufw3LN5a2A8XMxegvLWp815XwKrOjfWzNPSV
	o3QmKIV9UsPSeMVYfPGBBfpdSq+rnAxe8YmTB2zvJXOmF1mGFNDJpq59ovYJAOdY2sQCqs
	ztlRQflTeot8H2zX4UXwARK/NidmJfj+JR3PpxRb/xN/DjsRVBbIX19Qxm2vUbDUzsFtsS
	LiabT5XeavVSjGeea7KVjVNJ3LYBl1gJ0Uw7JqYfSJuGKko0QCDYaWnhKTn4gw==
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4CF0860010;
	Wed, 14 Jun 2023 08:56:01 +0000 (UTC)
From: alexis.lothore@bootlin.com
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 0/3] fix test results storage for mickledore
Date: Wed, 14 Jun 2023 10:56:11 +0200
Message-ID: <20230614085614.27951-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 08:56:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60288

From: Alexis Lothoré <alexis.lothore@bootlin.com>

This series is a follow-up for the 4.3_M1.rc1 regression report issue.

It has been observed that the report is empty. This issue is linked to
configuration description in yocto-autobuilder-helper, and has been
identified through the following steps:
- empty report is supposed to be a comparison between yocto-4.2 (4.2.rc3)
  and 4.3_M1.rc1
- yocto-4.2 results are almost empty: we only find test results from Intel
  QA (pushed _after_ the AB build) and not the AB test results
- tests results are managed by send-qa-email.send-qa-email uses resulttool
  to systematically gather and store test results in local git directory
- however, it looks for basebranch/comparebranch to know if those results
  can be pushed onto git server, and those variables depend on config.json
  content
- yocto-4.2 (4.2.rc3) has been built on release branch mickledore
  (https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/5212)
- since mickledore is not yet described in config.json, send-qa-email
  considers it as a "work" branch (contrary to a "release" branch) and does
  not push test results

As a consequence:
- first commit brings in python logger
- second commit adds a warning when such case happen, since we are able to
  detect it
- third fix actually adds mickledore as a release branch to properly store
  again test results

There must be a more robust rework to do (because the issue will likely
happen on each major delivery), but I aimed for the quick and small fix to
quickly bring back tests results storage without breaking other things in
the process

Alexis Lothoré (3):
  scripts/send-qa-email: use logger instead of raw prints
  scripts/send-qa-email: print warning when test results are not stored
  config.json: add mickledore as direct push branch for test results

 config.json              |  2 +-
 scripts/send_qa_email.py | 17 ++++++++++++-----
 2 files changed, 13 insertions(+), 6 deletions(-)

-- 
2.41.0


