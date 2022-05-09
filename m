Return-Path: <rhi@pengutronix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B76C43217
	for <webhook@archiver.kernel.org>; Mon,  9 May 2022 18:00:03 +0000 (UTC)
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by mx.groups.io with SMTP id smtpd.web11.609.1652119193317998004
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
	id 1no7fj-0002JU-Hg; Mon, 09 May 2022 19:59:51 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1no7fk-001Kx9-3Z; Mon, 09 May 2022 19:59:50 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1no7fh-00AW7z-22; Mon, 09 May 2022 19:59:49 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Roland Hieber <rhi@pengutronix.de>
Subject: [meta-oracle-java][PATCH 6/6] bump LAYERSERIES_COMPAT after bitbake
 syntax change
Date: Mon,  9 May 2022 19:53:22 +0200
Message-Id: <20220509175322.2501051-7-rhi@pengutronix.de>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57043

After the bitbake override syntax change, we're no longer compatible
with Yocto releases older than honister.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 70f7d10294e5..d8d6226d2df6 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -12,4 +12,4 @@ BBFILE_COLLECTIONS += "oraclejava"
 BBFILE_PATTERN_oraclejava := "^${LAYERDIR}/"
 BBFILE_PRIORITY_oraclejava = "6"
 
-LAYERSERIES_COMPAT_oraclejava = "warrior zeus dunfell gatesgarth hardknott"
+LAYERSERIES_COMPAT_oraclejava = "honister kirkstone"
-- 
2.30.2


