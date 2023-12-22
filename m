Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6867AC41535
	for <webhook@archiver.kernel.org>; Fri, 22 Dec 2023 11:48:45 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web10.21683.1703245720215866617
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Dec 2023 03:48:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=CqXck5ZB;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id A15ACE0003;
	Fri, 22 Dec 2023 11:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703245717;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=TBg3OUE2/xccBzsbZIpZVMmIu5BQuAnuz/Gp/nKzqQY=;
	b=CqXck5ZBIuzOYaJar1mdMFomifqQQiHDxvdR7wBeWsRMviLyQvpt73RyOrm3SX6CrGkwnU
	m8AStYElVRMYth1Y3Tm3uWd3tRTpQ4ql9WZrcTwucu318gJJ7I05DfTTnDivLFdNircaa1
	ShwgQcMuYR9ZkIJ8ex60vm73udsPOo30ay6ICZrZzcbQCggQmmsf03tQWPWUzZj1xld17O
	aCfnsZD5d7xFBnU5SnA3XSalDdZBpHolavmNc1YNvwrKkZDG4LKQS3ugTfk5wfbTgdZ98Y
	hcUSqXAUdGDM/Lb5INO5wYfmIHp5sRFfdtnaBfs8WyVlXOreA4OUD0Tq7/SkHA==
From: michael.opdenacker@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: add "package-management" to images
Date: Fri, 22 Dec 2023 12:48:26 +0100
Message-Id: <20231222114826.812055-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 11:48:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62020

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>

---
Note: could not test this change!
---
 config.json | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index d504d07..bd0135e 100644
--- a/config.json
+++ b/config.json
@@ -74,7 +74,8 @@
             "BB_LOG_HOST_STAT_ON_FAILURE = '1'",
             "BB_LOG_HOST_STAT_CMDS_FAILURE = 'oe-time-dd-test.sh -l'",
             "SDK_TOOLCHAIN_LANGS += 'rust'",
-            "BB_SERVER_TIMEOUT = '60'"
+            "BB_SERVER_TIMEOUT = '60'",
+            "EXTRA_IMAGE_FEATURES += 'package-management'",
         ]
     },
     "templates" : {
-- 
2.34.1


