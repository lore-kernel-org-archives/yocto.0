Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3975EB64DC
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 08:56:13 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.6781.1686732965304981169
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 01:56:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=JixyPNJH;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexis.lothore@bootlin.com)
X-GND-Sasl: alexis.lothore@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1686732963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=349/iuiS4WmQg9TZWQKg6HXWyB0fmBwccOzakvbrEzc=;
	b=JixyPNJH3GeszCYNOv/VoSA/y7OUjekmgJula1cz30dMpIRQzx+Vqp+utlr0oy7vY9MDsX
	LpkFDbOKAakZXb0NoE/yTYfGkUrl1DQ1lJVwo9Z8PkRmZV33u53MY7F3Nhc+dcCvaxLojM
	2sOCESDnBDYLXiQq3nuOaSRK2xWSqTdxdtPvafjhlTJdNaxIPPVeZhhcbfcX4lqgWd74xa
	vDdfEa7RdcxYcc2mBK3a2H4M+3Dn+OJqoHdbcEmbTglZkZ36gcFtBnfOvqULm+vMszbntY
	eMfFKx1FChR6Uz8iqdACAfEUIYxt1NKy3kZO0BGm2EK9slZuY2UxK1b7FGlLFw==
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id ADC266000B;
	Wed, 14 Jun 2023 08:56:03 +0000 (UTC)
From: alexis.lothore@bootlin.com
To: <yocto@lists.yoctoproject.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder-helper][PATCH 3/3] config.json: add mickledore as direct push branch for test results
Date: Wed, 14 Jun 2023 10:56:14 +0200
Message-ID: <20230614085614.27951-4-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230614085614.27951-1-alexis.lothore@bootlin.com>
References: <20230614085614.27951-1-alexis.lothore@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 08:56:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60291

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Now that mickledore is released, builds are executed on mickeldore release
branch. If not properly described in config.json, it will be considered a
"work" branch, and as a consequence test results will not be pushed onto
test results git repository
Add mickeldore entry in config.json to fix test results storage

Signed-off-by: Alexis Lothoré <alexis.lothore@bootlin.com>
---
Example of such failure is AB build 5212
(https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/5212/steps/29/logs/stdio)
for yocto-4.2 (mickledore release), which lead to empty regression report
for 4.3_M1.rc1 since it was compared to 4.2
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 7fe2baea3428..e7f308d0a3f6 100644
--- a/config.json
+++ b/config.json
@@ -5,7 +5,7 @@
 
     "BUILD_HISTORY_DIR" : "buildhistory",
     "BUILD_HISTORY_REPO" : "ssh://git@push.yoctoproject.org/poky-buildhistory",
-    "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:warrior", "poky:zeus", "poky:dunfell", "poky:gatesgarth", "poky:hardknott", "poky:honister", "poky:kirkstone", "poky:langdale", "poky:master"],
+    "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:warrior", "poky:zeus", "poky:dunfell", "poky:gatesgarth", "poky:hardknott", "poky:honister", "poky:kirkstone", "poky:langdale", "poky:mickledore", "poky:master"],
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky-contrib:abelloni/master-next": "poky:master", "poky:master-next" : "poky:master"},
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20210214-8/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.2+snapshot-7d38cc8e749aedb8435ee71847e04b353cca541d.sh",
-- 
2.41.0


