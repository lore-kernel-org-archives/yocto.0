Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04A9DC47DAF
	for <webhook@archiver.kernel.org>; Thu, 18 Jan 2024 12:32:55 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web10.10347.1705581173336588238
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jan 2024 04:32:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=p4dWu50Z;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: alexandre.belloni@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 64F7C20005;
	Thu, 18 Jan 2024 12:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705581171;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=o5HBA4CGKKzLzfLCfaA65toGSCqbkyDdO57xOAzHuZ4=;
	b=p4dWu50Zkf1xVH+j6rW26XS8jGVHDaxai06t7MbTwAPbp2h8I3MnUOia5GoWFVPWVTelPI
	kRZQeByOaU0j46mnzgK/DGvl5djUQelEj8dMENR8CCeyPUCfUjti3ArUtZXPlCLUO2UuTw
	ZkjRMuzq1TVM3B0d7NcJbx6RdF9gG6tr0gjWx9iT01ffGy2mT1P9qxVjlC6US9Z9oD6PBS
	P0ilKx0LsiH0nVqLXFpK8Du6jU+dks8k+HFXVpUA9T2xN7lgLcf0dcwu6e9bw5lIum921k
	vfhuQ2VBFS7vv6ulywMUV3s/zK5N6uTBdHCe4okBstsfFl2StI1XRBAdZ0aWJw==
From: alexandre.belloni@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: meta-agl now needs meta-oe
Date: Thu, 18 Jan 2024 13:32:47 +0100
Message-ID: <20240118123247.587100-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexandre.belloni@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Jan 2024 12:32:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62188

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

rng-tools has been moved to meta-oe and is a dependency of packagegroup-agl-core-boot

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 config.json | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 4686068dc5b6..b92a4f237c96 100644
--- a/config.json
+++ b/config.json
@@ -646,9 +646,10 @@
             }
         },
         "meta-agl-core" : {
-            "NEEDREPOS" : ["poky", "meta-agl"],
+            "NEEDREPOS" : ["poky", "meta-openembedded", "meta-agl"],
             "ADDLAYER" : [
-                "${BUILDDIR}/../meta-agl/meta-agl-core"
+                "${BUILDDIR}/../meta-agl/meta-agl-core",
+                "${BUILDDIR}/../meta-openembedded/meta-oe"
             ],
             "DISTRO" : "poky-agl",
             "BUILDINFO" : true,
-- 
2.43.0


