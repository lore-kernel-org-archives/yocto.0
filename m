Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AC76C7618B
	for <webhook@archiver.kernel.org>; Mon, 13 Mar 2023 14:52:15 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web11.22135.1678719125498860603
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Mar 2023 07:52:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=oYpgLVLe;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id D3786E0004;
	Mon, 13 Mar 2023 14:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1678719124;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=McNBS5S7FQpM2UJYirChae4xxGlYGlofsNw5j5lG53Q=;
	b=oYpgLVLeNyQk0TAxJWbIQPiAKYPYqvaZt0x8gC3EtlDmGt49psu5zOuDl2MYekBuVRrRhH
	RMye0oRS+168vFA1Js+kvXa1OQje/AwbZ+VxbS8zhh6wGtMgCvl5j43ySZL8cWPEaOS8kt
	CL8hI5YuU3YxXzn6RsgsYV9QgewCcZkIctnjqoclqFxI8Vj1M4q9gZ3iBSBTzNSjPAcz93
	MKql4DFNMi4J3BBYeFIiESuIYKV2y9hWGNyEfjTnQR1+sICdCWu9wpt5MUx3GpF+vsjTOO
	oCywLr728a/4XXzb3+U+D0iGldwIxlWIIULgExirAJOCC2Um3GTgkfyksloRSw==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org,
	alexandre.belloni@bootlin.com
Cc: thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 8/8] config: flag A. Belloni master-next branch as testing branch
Date: Mon, 13 Mar 2023 15:51:45 +0100
Message-Id: <20230313145145.2574842-9-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230313145145.2574842-1-alexis.lothore@bootlin.com>
References: <20230313145145.2574842-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Mar 2023 14:52:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59417

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Add "abelloni/master-next" branch from poky-contrib in configuration so that
regression reports are generated when testing for patches

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 687608d..fcd0588 100644
--- a/config.json
+++ b/config.json
@@ -6,7 +6,7 @@
     "BUILD_HISTORY_DIR" : "buildhistory",
     "BUILD_HISTORY_REPO" : "ssh://git@push.yoctoproject.org/poky-buildhistory",
     "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:warrior", "poky:zeus", "poky:dunfell", "poky:gatesgarth", "poky:hardknott", "poky:honister", "poky:kirkstone", "poky:langdale", "poky:master"],
-    "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky:master-next" : "poky:master"},
+    "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky-contrib:abelloni/master-next": "poky/master", "poky:master-next" : "poky:master"},
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20210214-8/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.2+snapshot-7d38cc8e749aedb8435ee71847e04b353cca541d.sh",
     "BUILDTOOLS_URL_TEMPLOCAL2" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
-- 
2.39.2


