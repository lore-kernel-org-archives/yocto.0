Return-Path: <stefan@datenfreihafen.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F468C636F5
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:14 +0000 (UTC)
Received: from proxima.lasnet.de (proxima.lasnet.de [78.47.171.185])
 by mx.groups.io with SMTP id smtpd.web09.28490.1650887410061353095
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 04:50:11 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: datenfreihafen.org, ip: 78.47.171.185,
 mailfrom: stefan@datenfreihafen.org)
Received: from localhost.localdomain.datenfreihafen.local
 (p200300e9d7262b5c71cabf60f76586ad.dip0.t-ipconnect.de
 [IPv6:2003:e9:d726:2b5c:71ca:bf60:f765:86ad])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
 SHA256)
	(No client certificate requested)
	(Authenticated sender: stefan@sostec.de)
	by proxima.lasnet.de (Postfix) with ESMTPSA id B08B5C0A13;
	Mon, 25 Apr 2022 13:50:06 +0200 (CEST)
From: Stefan Schmidt <stefan@datenfreihafen.org>
To: yocto@lists.yoctoproject.org
Cc: Stefan Schmidt <stefan@datenfreihafen.org>,
	Stefan Schmidt <stefan.schmidt@huawei.com>
Subject: [meta-zephyr][PATCH] zephyr-openthread-rcp: Enable Thread 1.2
 capabilities in RCP build
Date: Mon, 25 Apr 2022 13:49:52 +0200
Message-Id: <20220425114952.15809-1-stefan@datenfreihafen.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56879

From: Stefan Schmidt <stefan.schmidt@huawei.com>

When running an up-to-date userspace component, like otbr-agent or
ot-daemon, with Thread 1.2 enabled we need a firmware matching this
capabilities.

Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
---
 .../recipes-kernel/zephyr-kernel/zephyr-openthread-rcp.bb       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthr=
ead-rcp.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthr=
ead-rcp.bb
index 708e56a..6d3f860 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-rcp=
.bb
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-rcp=
.bb
@@ -2,7 +2,7 @@ include zephyr-sample.inc
=20
 ZEPHYR_SRC_DIR =3D "${S}/samples/net/openthread/coprocessor"
=20
-EXTRA_OECMAKE +=3D "-DCONF_FILE=3D"prj.conf overlay-rcp.conf overlay-usb=
-nrf-br.conf" -DDTC_OVERLAY_FILE=3D"usb.overlay""
+EXTRA_OECMAKE +=3D "-DCONF_FILE=3D"prj.conf overlay-rcp.conf overlay-usb=
-nrf-br.conf" -DDTC_OVERLAY_FILE=3D"usb.overlay" -DCONFIG_OPENTHREAD_THRE=
AD_VERSION_1_2=3Dy"
=20
 # The overlay config and OpenThread itself imposes some specific require=
ments
 # towards the boards (e.g. flash layout and ieee802154 radio) so we need=
 to
--=20
2.35.1


