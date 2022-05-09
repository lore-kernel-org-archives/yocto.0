Return-Path: <rhi@pengutronix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B3AC4332F
	for <webhook@archiver.kernel.org>; Mon,  9 May 2022 18:00:03 +0000 (UTC)
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by mx.groups.io with SMTP id smtpd.web10.594.1652119193495035564
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
	id 1no7fj-0002JV-KQ; Mon, 09 May 2022 19:59:51 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1no7fk-001KxB-4q; Mon, 09 May 2022 19:59:50 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1no7fg-00AW7i-Pr; Mon, 09 May 2022 19:59:48 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Roland Hieber <rhi@pengutronix.de>
Subject: [meta-oracle-java][PATCH 0/6] kirkstone compatibility
Date: Mon,  9 May 2022 19:53:16 +0200
Message-Id: <20220509175322.2501051-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57042

Hi,

the meta-oracle-java layer no longer builds with kirkstone due to the
new override syntax. While at it, I've included some general fixes.

I suggest to add a new branch 'honister' on the commit "oracle-jse:
update dependency from gtk+ to gtk+3" in case anyone still wants to
build the layer with older releases, as the next commit "convert to new
override syntax" is the first one that breaks compatibility.

Cheers,

 - Roland

Roland Hieber (6):
  README: fix mailing list address and other typos
  oracle-jse-jre: fix python indentation
  set LAYERSERIES_COMPAT
  oracle-jse: update dependency from gtk+ to gtk+3
  convert to new override syntax
  bump LAYERSERIES_COMPAT after bitbake syntax change

 README                                        |  6 ++--
 conf/layer.conf                               |  2 +-
 .../oracle-java/oracle-jse-jdk.inc            |  8 +++---
 .../oracle-java/oracle-jse-jre_1.8.0.bb       | 28 +++++++++----------
 recipes-devtools/oracle-java/oracle-jse.inc   | 16 +++++------
 5 files changed, 30 insertions(+), 30 deletions(-)

-- 
2.30.2


