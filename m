Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 881EEEB64DC
	for <webhook@archiver.kernel.org>; Mon, 26 Jun 2023 08:05:42 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web11.3065.1687766738778907901
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jun 2023 01:05:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Tq2QoTpU;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: alexis.lothore@bootlin.com)
X-GND-Sasl: alexis.lothore@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1687766736;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=T37ibYCzy911+SfxdbVayY29Kz1Y4SyOfh7gcSu0IyE=;
	b=Tq2QoTpUMTTHie6ImYQivczpo35XWnzbOhA/gIxz03Jt/HkJsXElRxjKRlHXhuCbpDQXt+
	PmQRdci4LiM2IjcHn8pG3EnbJSaay3Ooq4KLCadxbobkR218fdJs8CaX5LY79G7cWq/45b
	Bsk2WwmoxFxm1PlwsO8vXDLTAF8yu/5wXRAm55dZKxRvsK0wzAYCS8n6/mOYZ3CL+puY2L
	Qo5Q64qlchhbXQHZqj/G372HM3Q+RQ8hnEsuZrmJiotPiNK5BnziAAq8ujrr3HOWNlRLt2
	NTXXR8CqMkGP4yzN3LRhIWK2+gAg3ARov/BeoIhiPCqms+pPVyk/fHJe2INfAg==
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id B1F5B1C000A;
	Mon, 26 Jun 2023 08:05:36 +0000 (UTC)
From: alexis.lothore@bootlin.com
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 0/3] replace BUILD_HISTORY_DIRECTPUSH with hardcoded condition
Date: Mon, 26 Jun 2023 10:05:57 +0200
Message-ID: <20230626080600.17359-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 08:05:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60440

From: Alexis Lothoré <alexis.lothore@bootlin.com>

This series is a follow-up to [1], which hot-fixed tests results not being
pushed by Autobuilder by enriching the BUILD_HISTORY_DIRECTPUSH variable
with mickledore. Since the issue will likely happen for all new releases,
this series brings in a better fix (suggested by Richard) to systematically
include all "main" branches, based on their name and the target repository
(poky). Since the new condition is based on the branch name, it assumes
that except for the XXX-next branch, no other custom/non release branch
will be pushed to poky (contrary to poky-contrib)

[1] https://lists.yoctoproject.org/g/yocto/topic/99523809#60297

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
2.41.0


