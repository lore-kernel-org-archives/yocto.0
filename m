Return-Path: <rhi@pengutronix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9772DC433FE
	for <webhook@archiver.kernel.org>; Mon,  9 May 2022 18:00:03 +0000 (UTC)
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by mx.groups.io with SMTP id smtpd.web11.610.1652119193435610797
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 May 2022 10:59:54 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: pengutronix.de, ip: 85.220.165.71, mailfrom: rhi@pengutronix.de)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1no7fj-0002KB-Sm; Mon, 09 May 2022 19:59:51 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1no7fk-001KxI-FG; Mon, 09 May 2022 19:59:51 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1no7fg-00AW7t-Vg; Mon, 09 May 2022 19:59:48 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Roland Hieber <rhi@pengutronix.de>
Subject: [meta-oracle-java][PATCH 4/6] oracle-jse: update dependency from gtk+
 to gtk+3
Date: Mon,  9 May 2022 19:53:20 +0200
Message-Id: <20220509175322.2501051-5-rhi@pengutronix.de>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57044

GTK+ 2 is deprecated, and has not been included in OE-Core since commit
3c692e0d77e68908ab0e (2019-07-05, Ross Burton: "gtk+: remove GTK+ 2").
Java SE also builds with GTK+ 3, so update the dependency.

Link: https://github.com/openembedded/openembedded-core/commit/3c692e0d77e68908ab0e
Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 recipes-devtools/oracle-java/oracle-jse.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index ce8280c8cb51..c799c03033c6 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "\
 
 FETCHCMD_wget_append = " --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' "
 
-RDEPENDS_${PN} += " libasound atk cairo gdk-pixbuf mesa gtk+ libxtst libxi"
+RDEPENDS_${PN} += " libasound atk cairo gdk-pixbuf mesa gtk+3 libxtst libxi"
 # get the java update version in the resulting package
 PR =. "u${PV_UPDATE}"
 S = "${WORKDIR}"
-- 
2.30.2


