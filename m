Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89295EB64DD
	for <webhook@archiver.kernel.org>; Mon, 26 Jun 2023 08:05:42 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web10.2969.1687766739031253169
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jun 2023 01:05:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=P5z3dI69;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: alexis.lothore@bootlin.com)
X-GND-Sasl: alexis.lothore@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1687766737;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3zGZJc43e7XPKx0gwKHuWDUt13zsH8sf9Y+ngpUREQU=;
	b=P5z3dI69h0IulRra6o8cx2vY4SEgxGGGDRZKlq4Rd4+H1tqxS678lR7kS62kBXmb+Z+qB0
	gqmVvZPW3X7aWqY5lZUFZkrDr7rx3Lm6C8C1M4cJtRUZwmv7+GqtcXnzcjXtI/jG9eJitk
	HUWFnQrN1XWKaMFy2wxobX6lr6J6J1Cg7d9iFG2G3OAM2/YZTPgNY4gCaI72bkh02u4HaK
	meV03RJptLuIUi0wPv6UgGRwQj8plfsmMDEzFWvu3siQO73FrGFHQZnvvfPs3vfN8n7fkX
	kZ3+PGE2K8I7SbP+eCNMNKEmaO30aevl4B455TtMRrKlO8Ur5JN+6vqyM5LtsA==
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 737601C001B;
	Mon, 26 Jun 2023 08:05:37 +0000 (UTC)
From: alexis.lothore@bootlin.com
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 2/3] config.json: remove BUILD_HISTORY_DIRECTPUSH
Date: Mon, 26 Jun 2023 10:05:59 +0200
Message-ID: <20230626080600.17359-3-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230626080600.17359-1-alexis.lothore@bootlin.com>
References: <20230626080600.17359-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 08:05:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60441

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Now that BUILD_HISTORY_DIRECTPUSH has been replaced by a hardcoded
condition, remove it from config.json

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
 config.json | 1 -
 1 file changed, 1 deletion(-)

diff --git a/config.json b/config.json
index e7f308d0a3f6..f271ffaa402a 100644
--- a/config.json
+++ b/config.json
@@ -5,7 +5,6 @@
 
     "BUILD_HISTORY_DIR" : "buildhistory",
     "BUILD_HISTORY_REPO" : "ssh://git@push.yoctoproject.org/poky-buildhistory",
-    "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:warrior", "poky:zeus", "poky:dunfell", "poky:gatesgarth", "poky:hardknott", "poky:honister", "poky:kirkstone", "poky:langdale", "poky:mickledore", "poky:master"],
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky-contrib:abelloni/master-next": "poky:master", "poky:master-next" : "poky:master"},
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20210214-8/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.2+snapshot-7d38cc8e749aedb8435ee71847e04b353cca541d.sh",
-- 
2.41.0


