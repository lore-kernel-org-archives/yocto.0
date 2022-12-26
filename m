Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70B95C4332F
	for <webhook@archiver.kernel.org>; Mon, 26 Dec 2022 09:24:39 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.133680.1672046673277834211
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Dec 2022 01:24:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=bd4ljntK;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 6CD121BF208;
	Mon, 26 Dec 2022 09:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1672046671;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=i3K26RrqY/VqAyxN9Eq0aujmTA3n6LO1wsAAofwo/sk=;
	b=bd4ljntKfyUG89YeWtasFlya45utCeGKTXVm/xc+HBpQoqse7+f7SwAdaORL8Al9dptvAn
	HySc2ZOlVKZ6YaXFlpy7bBN7+mua7521xUU7Y8tjqqBOMcwpUt7XWPCshMrLL2Sge4yjLP
	DqlI7Dwc0jYe5Y8YqwaKGhA7ia4nauWTErBRTYrlPTnP4FIQqx3xgI5jOy7iqRbUIjWAL8
	+hWFtNtva+1CkilUkXPHWz1E5iCcdwW9y4n+Bv3epp2YPCRshO1uyrJUoJ84cdS9ObqPHk
	UnCCHx7IMdh6JIq9ioX3mg1Iu4qKPgz+AZyg9OgB/aTH3g9165BhecSdG7xLDQ==
From: alexandre.belloni@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH] config.json: remove meta-agl from check-layer
Date: Mon, 26 Dec 2022 10:24:19 +0100
Message-Id: <20221226092419.1376287-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Dec 2022 09:24:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58864

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

langdale isn't currently supported on any branch of meta-agl

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 config.json | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/config.json b/config.json
index 27283c9f1610..45560c5cc522 100644
--- a/config.json
+++ b/config.json
@@ -890,33 +890,29 @@
             }
         },
         "check-layer-nightly" : {
-            "NEEDREPOS" : ["poky", "meta-agl", "meta-arm", "meta-aws", "meta-intel", "meta-ti", "meta-openembedded", "meta-virtualization"],
+            "NEEDREPOS" : ["poky", "meta-arm", "meta-aws", "meta-intel", "meta-ti", "meta-openembedded", "meta-virtualization"],
             "step1" : {
-                "shortname" : "Test meta-agl YP Compatibility",
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-agl/meta-agl-core ../meta-agl/meta-netboot ../meta-agl/meta-pipewire --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python --no-auto-dependency"]
-            },
-            "step2" : {
                 "shortname" : "Test meta-arm YP Compatibility",
                 "MACHINE" : "qemuarm64",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-arm/meta-arm ../meta-arm/meta-arm-toolchain ../meta-arm/meta-arm-bsp ../meta-arm/meta-gem5 ../meta-arm/meta-arm-autonomy --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python ../meta-poky ../meta-openembedded/meta-filesystems ../meta-virtualization --no-auto-dependency"]
             },
-            "step3" : {
+            "step2" : {
                 "shortname" : "Test meta-aws YP Compatibility",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-aws --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python -n --no-auto-dependency"]
             },
-            "step4" : {
+            "step3" : {
                 "shortname" : "Test meta-intel YP Compatibility",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-intel --no-auto-dependency"]
             },
-            "step5" : {
+            "step4" : {
                 "shortname" : "Test meta-ti YP Compatibility",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-ti/meta-ti-bsp ../meta-ti/meta-ti-extras --dependency ../meta-arm --no-auto-dependency"]
             },
-            "step6" : {
+            "step5" : {
                 "shortname" : "Test meta-oe YP Compatibility",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-openembedded --no-auto-dependency"]
             },
-            "step7" : {
+            "step6" : {
                 "shortname" : "Test meta-virtualization YP Compatibility",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-virtualization --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python ../meta-openembedded/meta-filesystems --no-auto-dependency"]
             }
-- 
2.38.1


