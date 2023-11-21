Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADCEC61D90
	for <webhook@archiver.kernel.org>; Tue, 21 Nov 2023 08:00:08 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web10.31197.1700553606681247782
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Nov 2023 00:00:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=WliYZ+pG;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: alexandre.belloni@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id DB8511C0017;
	Tue, 21 Nov 2023 08:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1700553604;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+YqquvQ3ljNX1zvrt7yu0/M6Gzh1gDP3S0FFpLIsSz8=;
	b=WliYZ+pGGGWv3W6lpYN+LSH3kI2iAFJB8jT+eau9QhYjh93JhmA5erOni+WXIjY1evCLSP
	JTo1hsv02n1Rf71Ghz+3Fu4kQXF3C+8o7Q8CIfnSsk7Xy3xzh+5iYC+x6xTIWNsFSlhccl
	yEVyOrNHsvkvU38kbWaszngd7BXNEVtSCT8mDWxeqRCHEWEmZwIgE/fMozH/6ffphpazC0
	5YEGWG2PjptSuq+JPgO6ODeakPmsfu1PUjEZD6tB4A3vzs7tVA4Y0QXj/VNfZjLbI8pNl2
	Q7krayTn8NkT7yTz+7nECcIkGLOFIjmAqF9Vdw4bDfsk4BtGwszTC4ph1Yvgzw==
From: alexandre.belloni@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH yocto-autobuilder-helper] [nanbield] config.json: use nanbield for meta-virtualization
Date: Tue, 21 Nov 2023 08:59:52 +0100
Message-ID: <20231121075952.869710-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexandre.belloni@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Nov 2023 08:00:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61720

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 0e002966a959..f0d85f1b21b7 100644
--- a/config.json
+++ b/config.json
@@ -1557,7 +1557,7 @@
         },
         "meta-virtualization" : {
             "url" : "ssh://git@push.yoctoproject.org/meta-virtualization",
-            "branch" : "master",
+            "branch" : "nanbield",
             "revision" : "HEAD",
             "no-layer-add" : true
         },
-- 
2.41.0


