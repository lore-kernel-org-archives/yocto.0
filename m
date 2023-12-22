Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26DDC41535
	for <webhook@archiver.kernel.org>; Fri, 22 Dec 2023 13:19:15 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web10.22926.1703251151532738456
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Dec 2023 05:19:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=IvzPkHVS;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 30F391C000B;
	Fri, 22 Dec 2023 13:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703251149;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0RkGCqTsi0xi9gQPi2QquaruyMPsmqYGmOgwxJDVVW4=;
	b=IvzPkHVS/9uxyGeDNZsvlVIeWxsFB98+O6hvyeIIHpFIQAYuoSgEBky/myOlyH5lGgHloL
	erBcO36yc8PMuB4xY3A5piEuUXpxplEAPsNBdoxD3wZ9XHzP03u40Vl8jcdYZlJ72Xot+i
	ELOVPdCKLrtapVRS+MDKIwyyMU8wM0B4N8lSZNnn5CD6r+WhHnPRIA9xKYKFTwBF5TxwHA
	aEQgcnTRzT7UwRY9LaWzBYVA4CgrZUGYevTuKnRbuEciwSlQL5NDmmzyJH1gJji6a7VnBN
	NnieHe/rHyQsjg3LotQ8Hiuavle6l1JRfRxbMd/imSeYHubrB2OscInUNNv8tw==
From: michael.opdenacker@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>,
	Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v2] config.json: add "package-management" to images
Date: Fri, 22 Dec 2023 14:19:07 +0100
Message-Id: <20231222131907.816564-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 13:19:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62025

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

For the binary distro effort, we want to implement a test that generates a feed
of packages, typically from the tip of a release branch (or master), and then
try to use this feed to update an image generated for the latest tag (release
or milestone) on this branch.

This patch makes it possible to use the images produced for releases
at https://downloads.yoctoproject.org/releases/yocto/, as they currently
don't have package management enabled.

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
CC: Alexander Kanavin <alex.kanavin@gmail.com>

---
Note: could not test this change!

Changes in V2:
- Add context to the commit message
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


