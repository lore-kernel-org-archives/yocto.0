Return-Path: <denis@denix.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46FD8C4332F
	for <webhook@archiver.kernel.org>; Wed,  8 Nov 2023 19:15:59 +0000 (UTC)
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web11.23643.1699470952418081283
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Nov 2023 11:15:53 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 9721440CEA;
	Wed,  8 Nov 2023 19:15:51 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jJM8EmRPJje0; Wed,  8 Nov 2023 19:15:51 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-87-159.washdc.fios.verizon.net [100.15.87.159])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 7A5FD40CE9;
	Wed,  8 Nov 2023 19:15:49 +0000 (UTC)
Received: from thorin.han-sole.ts.net (thorin.denix [192.168.30.9])
	by mail.denix.org (Postfix) with ESMTP id 3AA66163D57;
	Wed,  8 Nov 2023 14:15:48 -0500 (EST)
From: Denys Dmytriyenko <denis@denix.org>
To: yocto@lists.yoctoproject.org
Cc: richard.purdie@linuxfoundation.org,
	Denys Dmytriyenko <denis@denix.org>
Subject: [RFC][meta-yocto][PATCH] poky.conf: re-enable TCLIBCAPPEND
Date: Wed,  8 Nov 2023 19:15:37 +0000
Message-Id: <20231108191537.3956782-1-denis@denix.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Nov 2023 19:15:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61640

Back in 2011[0] TCLIBCAPPEND was disabled due to:

"Poky doesn't support parallel builds of libc at this point"

Since then musl, newlib and baremetal support were added along with abili=
ty
to build them together in multiconfig environments. Some BSPs are activel=
y
using multiconfigs to build baremetal components for modern heterogeneous
SoCs.

To enable such broad use cases for Poky (the reference Yocto distribution=
)
and many derivative distributions based on Poky, lets re-enable TCLIBCAPP=
END
to isolate dissonant TMPDIRs from each other and possible collisions.

[0] https://git.yoctoproject.org/meta-yocto/commit/?id=3D5e121094c6024d81=
13ab0922b40ccc8a45215277

[YOCTO #15273]

Signed-off-by: Denys Dmytriyenko <denis@denix.org>
---
This may not be the right fix for #15273, but the change is good on its
own and it avoids the race condition reported in that bugzilla entry.
It also helps with other observed collisions in a combined TMPDIR, such
as nativesdk builds for incompatible multiconfigs, etc.

 meta-poky/conf/distro/poky.conf | 2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
index e742666..742a64a 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -28,8 +28,6 @@ SDKPATHINSTALL =3D "/opt/${DISTRO}/${SDK_VERSION}"
 DISTRO_EXTRA_RDEPENDS +=3D "${POKY_DEFAULT_EXTRA_RDEPENDS}"
 DISTRO_EXTRA_RRECOMMENDS +=3D "${POKY_DEFAULT_EXTRA_RRECOMMENDS}"
=20
-TCLIBCAPPEND =3D ""
-
 PACKAGE_CLASSES ?=3D "package_rpm"
=20
 SANITY_TESTED_DISTROS ?=3D " \
--=20
2.25.1


