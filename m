Return-Path: <stefan@datenfreihafen.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FDCC433F5
	for <webhook@archiver.kernel.org>; Wed, 23 Feb 2022 14:31:56 +0000 (UTC)
Received: from proxima.lasnet.de (proxima.lasnet.de [78.47.171.185])
 by mx.groups.io with SMTP id smtpd.web10.8247.1645626689020431186
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Feb 2022 06:31:30 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: datenfreihafen.org, ip: 78.47.171.185,
 mailfrom: stefan@datenfreihafen.org)
Received: from localhost.localdomain
 (p200300e9d719d8e0fbfc4c112b16b358.dip0.t-ipconnect.de
 [IPv6:2003:e9:d719:d8e0:fbfc:4c11:2b16:b358])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
 SHA256)
	(No client certificate requested)
	(Authenticated sender: stefan@sostec.de)
	by proxima.lasnet.de (Postfix) with ESMTPSA id DC01FC00B1;
	Wed, 23 Feb 2022 15:31:25 +0100 (CET)
From: Stefan Schmidt <stefan@datenfreihafen.org>
To: yocto@lists.yoctoproject.org
Cc: Stefan Schmidt <stefan@datenfreihafen.org>,
	Stefan Schmidt <stefan.schmidt@huawei.com>
Subject: [meta-zephyr][PATCH] zephyr-openthread-rcp: add recipe for OpenThread
 radio co-processor sample
Date: Wed, 23 Feb 2022 15:30:45 +0100
Message-Id: <20220223143045.227246-1-stefan@datenfreihafen.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Feb 2022 14:31:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56264

From: Stefan Schmidt <stefan.schmidt@huawei.com>

This builds the sample for the radio co-processor firmware with a specifi=
c
set of overlays to work over USB transport.

Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
---
 .../zephyr-kernel/zephyr-openthread-rcp.bb             | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-=
openthread-rcp.bb

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthr=
ead-rcp.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthr=
ead-rcp.bb
new file mode 100644
index 0000000..708e56a
--- /dev/null
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-rcp=
.bb
@@ -0,0 +1,10 @@
+include zephyr-sample.inc
+
+ZEPHYR_SRC_DIR =3D "${S}/samples/net/openthread/coprocessor"
+
+EXTRA_OECMAKE +=3D "-DCONF_FILE=3D"prj.conf overlay-rcp.conf overlay-usb=
-nrf-br.conf" -DDTC_OVERLAY_FILE=3D"usb.overlay""
+
+# The overlay config and OpenThread itself imposes some specific require=
ments
+# towards the boards (e.g. flash layout and ieee802154 radio) so we need=
 to
+# limit to known working machines here.
+COMPATIBLE_MACHINE =3D "(arduino-nano-33-ble)"
--=20
2.35.1


