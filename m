Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 113C3C54E67
	for <webhook@archiver.kernel.org>; Wed, 27 Mar 2024 19:04:29 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.2167.1711566258800417917
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Mar 2024 12:04:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=mNiB/Pil;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexandre.belloni@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id ADAD760002;
	Wed, 27 Mar 2024 19:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1711566256;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0d59MnZghVS0bVzK6Kzrm8XMcr5dZceSqrTR3FMuccM=;
	b=mNiB/Pil2UYLI8KZcUXCKYf3LlKMlJ8EFkJCfzJ2n2yR7MWdCAlt0z37QdkKdgcjoNpvG6
	3IiSyyrwwy0LetQeHAbpUK8DaBa1XT4iilMs2nGqciGa+fpg2yz8jLI3ewnfYg4Agq8nxw
	tWCBU+O2hglxDxTQhSsAcLab1wineYTjxcbSMUDDhRzRvUd4826Uj/1DW+/Ia8fCWgfaN6
	pP/qwNf0dHrL5eYKYAunPZd5R4Uf35MnRgWXXTeRXesUEouuh0H3NXTIzoFWFcT7WmJrxC
	a0ES8XVvjGIGxSNQSdUl0iLkSnyBej3ZBUEAL0SBwZVItQK/J8gaZSBrivgnZA==
From: alexandre.belloni@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder2][PATCH] schedulers: ensure correct branch is used for meta-exein for nanbield
Date: Wed, 27 Mar 2024 20:04:08 +0100
Message-ID: <20240327190408.1503836-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexandre.belloni@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Mar 2024 19:04:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62852

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 schedulers.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/schedulers.py b/schedulers.py
index a30383f255a1..47eedde016cf 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -91,6 +91,7 @@ branchdefaults = {
         'branch_meta-openembedded': 'nanbield',
         'branch_meta-ti': 'master',
         'branch_meta-virtualization': 'nanbield',
+        'branch_meta-exein': 'nanbield',
         'branch_oecore': 'nanbield',
     },
     'mickledore': {
-- 
2.44.0


