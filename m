Return-Path: <webhook@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,RDNS_NONE,SPF_HELO_NONE,
	SPOOFED_FREEMAIL_NO_RDNS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB70BC433F5
	for <webhook@archiver.kernel.org>; Thu, 23 Sep 2021 21:18:27 +0000 (UTC)
Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 21:18:27 -0000
Received: from mailout02.t-online.de (mailout02.t-online.de [194.25.134.17])
 by mx.groups.io with SMTP id smtpd.web10.2156.1632431906531403400
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 14:18:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.17,
 mailfrom: f_l_k@t-online.de)
Received: from fwd86.dcpf.telekom.de (fwd86.aul.t-online.de [10.223.144.112])
	by mailout02.t-online.de (Postfix) with SMTP id A08C4264E
	for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 23:18:24 +0200 (CEST)
Received: from flk-MS-7C91.fritz.box ([79.219.228.58]) by fwd86.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1mTW6p-1cMqm20; Thu, 23 Sep 2021 23:18:23 +0200
From: MarkusVolk <f_l_k@t-online.de>
To: yocto@lists.yoctoproject.org
Cc: MarkusVolk <f_l_k@t-online.de>
Subject: [yocto][meta-rockchip][PATCH v2 2/2] rockchip-wic.inc: dont let wic
 edit fstab by default
Date: Thu, 23 Sep 2021 23:17:59 +0200
Message-Id: <20210923211759.13676-2-f_l_k@t-online.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923211759.13676-1-f_l_k@t-online.de>
References: <20210923211759.13676-1-f_l_k@t-online.de>
MIME-Version: 1.0
X-TOI-EXPURGATEID: 150726::1632431903-00001467-603DA92C/0/0 CLEAN NORMAL
X-TOI-MSGID: 5335309b-ccc1-483a-be06-4a36bc13f76c
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54826

Signed-off-by: MarkusVolk <f_l_k@t-online.de>
---
 conf/machine/include/rockchip-wic.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include=
/rockchip-wic.inc
index 15010a0..30b0d57 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -26,3 +26,6 @@ WICVARS:append =3D " \
 	SPL_BINARY \
 	UBOOT_SUFFIX \
 	"
+
+# Do not update fstab file while creating wic images
+WIC_CREATE_EXTRA_ARGS ?=3D "--no-fstab-update"
--=20
2.25.1


