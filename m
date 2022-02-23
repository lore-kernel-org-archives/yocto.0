Return-Path: <denis@denix.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C621C433F5
	for <webhook@archiver.kernel.org>; Wed, 23 Feb 2022 00:38:06 +0000 (UTC)
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web08.1548.1645576684613087493
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 16:38:05 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64,
 mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id A40F840BEB
	for <yocto@lists.yoctoproject.org>; Wed, 23 Feb 2022 00:38:03 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uLwVXSm7H4Eo for <yocto@lists.yoctoproject.org>;
	Wed, 23 Feb 2022 00:38:03 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net
 [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 91FC040A28
	for <yocto@lists.yoctoproject.org>; Wed, 23 Feb 2022 00:38:03 +0000 (UTC)
Received: from thorin.denix (thorin.denix [192.168.30.9])
	by mail.denix.org (Postfix) with ESMTP id C106E174789;
	Tue, 22 Feb 2022 19:38:02 -0500 (EST)
From: Denys Dmytriyenko <denis@denix.org>
To: yocto@lists.yoctoproject.org
Cc: Denys Dmytriyenko <denis@denix.org>
Subject: [yocto-autobuilder-helper][PATCH] config.json: update check-layer for
 meta-ti due to restructure
Date: Wed, 23 Feb 2022 00:37:53 +0000
Message-Id: <20220223003753.615921-1-denis@denix.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Feb 2022 00:38:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56255

meta-ti recently split into sublayers - adjust config.json accordingly.

Signed-off-by: Denys Dmytriyenko <denis@denix.org>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index fa13545..ba7a6a0 100644
--- a/config.json
+++ b/config.json
@@ -891,7 +891,7 @@
             },
             "step5" : {
                 "shortname" : "Test meta-ti YP Compatibility",
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-ti --d=
ependency ../meta-arm --no-auto-dependency"]
+                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-ti/met=
a-ti-bsp ../meta-ti/meta-ti-extras --dependency ../meta-arm --no-auto-dep=
endency"]
             },
             "step6" : {
                 "shortname" : "Test meta-oe YP Compatibility",
--=20
2.25.1


