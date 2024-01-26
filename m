Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D6EC47422
	for <webhook@archiver.kernel.org>; Fri, 26 Jan 2024 15:40:07 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web10.766.1706283598376487825
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jan 2024 07:39:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Y86HA6/v;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: alexandre.belloni@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id D59B4FF804;
	Fri, 26 Jan 2024 15:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1706283596;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=K7mlA3HN/b2tmCH5yPmVg3izfkC4795+Cg4y+gtayfA=;
	b=Y86HA6/vmpGLXkVlkpOC+Ol7eQV6Q+ZdzoiBxPPh/dpNZuc9h7UVZsi0oMZGEtSRLzWat/
	q7Ss/cbl2KSrtM/ihOVtXaY9jF6FUhuwuS3nYCN/PESp5oRfri/sjhZ4NKjys+XM4j6NC5
	pOpngdiZz2qsiyquarp97OQxPUMOm/8qM9MiNODJyWg8WbX4pEuhccXncHpzVa/2VFoGYL
	GdGnhQq/wvuMUVwGC5m9HM9G/N1VLcjizbHAaJveFmAywYExhHR0JqsD0alOuoqOVqSok6
	rqHzH3UR83//7oxXVQ75e/ciw2zTrFhDpE0a026BLffLrkvNTph0ptHbHT5vjQ==
From: alexandre.belloni@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder2][PATCH] schedulers: drop meta-oe-mirror and reproducible-meta-oe from SWAT monitoring
Date: Fri, 26 Jan 2024 16:39:52 +0100
Message-ID: <20240126153952.1596315-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexandre.belloni@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Jan 2024 15:40:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62302

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 schedulers.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/schedulers.py b/schedulers.py
index 9ffa88f5f384..5ddcc7a68ce9 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -283,6 +283,8 @@ def repos_for_builder(buildername):
 def parent_default_props(buildername, branchname=None):
     props = {}
     props["swat_monitor"] = True
+    if buildername in ['reproducible-meta-oe', 'meta-oe-mirror']:
+        props["swat_monitor"] = False
     repos = config.buildertorepos.get(buildername)
     if not repos:
         repos = config.buildertorepos["default"]
-- 
2.43.0


