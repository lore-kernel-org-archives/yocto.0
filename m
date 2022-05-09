Return-Path: <rhi@pengutronix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D347C433F5
	for <webhook@archiver.kernel.org>; Mon,  9 May 2022 18:00:03 +0000 (UTC)
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by mx.groups.io with SMTP id smtpd.web10.592.1652119192973739509
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 May 2022 10:59:53 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: pengutronix.de, ip: 85.220.165.71, mailfrom: rhi@pengutronix.de)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1no7fj-0002JS-4g; Mon, 09 May 2022 19:59:51 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1no7fj-001Kx3-K8; Mon, 09 May 2022 19:59:50 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1no7fg-00AW7k-RB; Mon, 09 May 2022 19:59:48 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Roland Hieber <rhi@pengutronix.de>
Subject: [meta-oracle-java][PATCH 1/6] README: fix mailing list address and
 other typos
Date: Mon,  9 May 2022 19:53:17 +0200
Message-Id: <20220509175322.2501051-2-rhi@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220509175322.2501051-1-rhi@pengutronix.de>
References: <20220509175322.2501051-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: rhi@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@lists.yoctoproject.org
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 May 2022 18:00:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57040

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 README | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/README b/README
index 1f2c1380f676..b375f310aed4 100644
--- a/README
+++ b/README
@@ -19,11 +19,11 @@ LICENSE_FLAGS_WHITELIST += "oracle_java"
 
 Notes
 =====
-The download URLs mentioned in the SRCURI of the oracle-java recipes
+The download URLs mentioned in the SRC_URI of the oracle-java recipes
 may show fetch issues with the built in bitbake wget fetcher. This is caused
 by the pre-requirement of clicking the "accept license" button on the oracle
 download webpage. So if you see fetch issues for the oracle java recipes,
-then you can overcome the issue by opening the SRCURI links manually in a web
+then you can overcome the issue by opening the SRC_URI links manually in a web
 browser, downloading the tarballs, and storing in the bitbake download
 location. And the bitbake download location is specified by DL_DIR variable
 in build configuration file (conf/local.conf)
@@ -32,7 +32,7 @@ Where to Send Patches
 =====================
 Please submit any patches against this layer to the Yocto mailing list like:
 
-git send-email --to=yocto@yoctoproject.org -M -1 --subject-prefix="meta-oracle-java][PATCH"
+git send-email --to=yocto@lists.yoctoproject.org -M -1 --subject-prefix="meta-oracle-java][PATCH"
 
 Please substitute "PATCH" with "PATCH v2" if you are submitting a revised version after
 addressing feedback (or v3, v4 etc.)
-- 
2.30.2


