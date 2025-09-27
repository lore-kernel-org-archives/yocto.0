Return-Path: <denis@denix.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC1DCAC5B8
	for <webhook@archiver.kernel.org>; Sat, 27 Sep 2025 15:12:39 +0000 (UTC)
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web11.14308.1758985953576497904
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Sep 2025 08:12:34 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 9EFA940C76;
	Sat, 27 Sep 2025 15:12:32 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X7kxZt7tLFBl; Sat, 27 Sep 2025 15:12:32 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-87-159.washdc.fios.verizon.net [100.15.87.159])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 7DDF8406B9;
	Sat, 27 Sep 2025 15:12:31 +0000 (UTC)
Received: from thorin.han-sole.ts.net (thorin.denix [192.168.30.9])
	by mail.denix.org (Postfix) with ESMTP id A5413163D91;
	Sat, 27 Sep 2025 11:12:30 -0400 (EDT)
From: Denys Dmytriyenko <denis@denix.org>
To: yocto@lists.yoctoproject.org
Cc: Denys Dmytriyenko <denys@konsulko.com>
Subject: [yocto-autobuilder-helper][PATCH] config.json: add meta-beagle sublayer of meta-ti to check-layer
Date: Sat, 27 Sep 2025 11:12:20 -0400
Message-Id: <20250927151220.449290-1-denis@denix.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 27 Sep 2025 15:12:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65878

From: Denys Dmytriyenko <denys@konsulko.com>

Also run nightly yocto-check-layer for meta-beagle sublayer of meta-ti.

Signed-off-by: Denys Dmytriyenko <denys@konsulko.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 90cb791..ce1fdc8 100644
--- a/config.json
+++ b/config.json
@@ -1221,7 +1221,7 @@
             },
             "step5" : {
                 "shortname" : "Test meta-ti YP Compatibility",
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-ti/met=
a-ti-bsp ../meta-ti/meta-ti-extras --dependency ../meta-arm --no-auto-dep=
endency"]
+                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-ti/met=
a-ti-bsp ../meta-ti/meta-ti-extras ../meta-ti/meta-beagle --dependency ..=
/meta-arm --no-auto-dependency"]
             },
             "step6" : {
                 "shortname" : "Test meta-oe YP Compatibility",
--=20
2.25.1


