Return-Path: <denis@denix.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDFBC46CD2
	for <webhook@archiver.kernel.org>; Tue, 30 Jan 2024 20:50:58 +0000 (UTC)
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web11.7882.1706647852924948858
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jan 2024 12:50:53 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 2F96240CB8
	for <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 20:50:52 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BFrjpuD0hma8 for <yocto@lists.yoctoproject.org>;
	Tue, 30 Jan 2024 20:50:52 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-87-159.washdc.fios.verizon.net [100.15.87.159])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 225A040AB7
	for <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 20:50:52 +0000 (UTC)
Received: from thorin.han-sole.ts.net (thorin.denix [192.168.30.9])
	by mail.denix.org (Postfix) with ESMTP id 5EBDD163DEF;
	Tue, 30 Jan 2024 15:50:51 -0500 (EST)
From: Denys Dmytriyenko <denis@denix.org>
To: yocto@lists.yoctoproject.org
Cc: Denys Dmytriyenko <denis@denix.org>
Subject: [meta-selinux][PATCH] rpm: update PACKAGECONFIG for CMake
Date: Tue, 30 Jan 2024 15:50:42 -0500
Message-Id: <20240130205042.2641514-1-denis@denix.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 20:50:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62340

Version 4.19 has migrated from autoconf to CMake, update PACKAGECONFIG
accordingly.

https://git.openembedded.org/openembedded-core/commit/?id=3D38549d462b399=
e3a63335f60a44c8bbced98639a

Signed-off-by: Denys Dmytriyenko <denis@denix.org>
---
 recipes-devtools/rpm/rpm_selinux.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/rpm/rpm_selinux.inc b/recipes-devtools/rpm/=
rpm_selinux.inc
index b6e0e7c..29eefbf 100644
--- a/recipes-devtools/rpm/rpm_selinux.inc
+++ b/recipes-devtools/rpm/rpm_selinux.inc
@@ -1,2 +1,2 @@
 inherit enable-selinux
-PACKAGECONFIG[selinux] =3D "--with-selinux,--without-selinux,libselinux"
+PACKAGECONFIG[selinux] =3D "-DWITH_SELINUX=3DON,-DWITH_SELINUX=3DOFF,lib=
selinux"
--=20
2.25.1


