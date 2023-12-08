Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E2CEC10F04
	for <webhook@archiver.kernel.org>; Fri,  8 Dec 2023 21:59:36 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web11.24565.1702072771964082046
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Dec 2023 13:59:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=YFW1ftL8;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 72E4A20002;
	Fri,  8 Dec 2023 21:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702072770;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=seR6HGyly1hhqdzi9/zTRi401UKx5lPrjePFOEFA9sA=;
	b=YFW1ftL8YMOVgTA3zn0Jhf1zqZi/JFaPMKQm4VppV+8cy2RThbnIutxVEgdKmJUihQId9T
	Mkg+6W+D22bBH+apbdjL6/IxG7FJGamOrUMUXEReCUepkuBJJ+OjHyXEjLoPUWvTjoVdps
	wV5th2xliIwB8eDFUXPldGHhvq+J3FoG5R5PcG3LNe1OY70GJigHEiMXq4W43iO2Lu1qxg
	y1vFeDolcPH93SqQ0p3YH7Bfi0ugnK5iiZuzKFDe4ks3CMNix/BEQJdQhPj3BdYPcV/NE2
	CT9OTSop8RC8atqUzFAKAaD56AZoDIU4I/p2jRbfB5J12XjnShwWc+CBF/Bofg==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][mickledore][PATCH 2/3] config.json: remove BUILD_HISTORY_DIRECTPUSH
Date: Fri,  8 Dec 2023 22:59:14 +0100
Message-ID: <20231208215915.225182-3-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231208215915.225182-1-alexis.lothore@bootlin.com>
References: <20231208215915.225182-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexis.lothore@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Dec 2023 21:59:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61847

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Now that BUILD_HISTORY_DIRECTPUSH has been replaced by a hardcoded
condition, remove it from config.json

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 1 -
 1 file changed, 1 deletion(-)

diff --git a/config.json b/config.json
index 1eeabc4c9015..f93ec45927ac 100644
--- a/config.json
+++ b/config.json
@@ -5,7 +5,6 @@
 
     "BUILD_HISTORY_DIR" : "buildhistory",
     "BUILD_HISTORY_REPO" : "ssh://git@push.yoctoproject.org/poky-buildhistory",
-    "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:warrior", "poky:zeus", "poky:dunfell", "poky:gatesgarth", "poky:hardknott", "poky:honister", "poky:kirkstone", "poky:langdale", "poky:master"],
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky-contrib:abelloni/master-next": "poky:master", "poky:master-next" : "poky:master"},
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20210214-8/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.2+snapshot-7d38cc8e749aedb8435ee71847e04b353cca541d.sh",
-- 
2.42.1


