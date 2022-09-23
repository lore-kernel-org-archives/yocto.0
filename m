Return-Path: <philippe.coval@astrolabe.coop>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C977C6FA86
	for <webhook@archiver.kernel.org>; Fri, 23 Sep 2022 08:28:22 +0000 (UTC)
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
 by mx.groups.io with SMTP id smtpd.web09.5301.1663921699607960311
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Sep 2022 01:28:20 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: hua.lan.rzr.cloudns.org,
 ip: 212.27.42.2, mailfrom: rzr@hua.lan.rzr.cloudns.org)
Received: from hua (unknown [78.197.125.113])
	(Authenticated sender: philippe.coval@free.fr)
	by smtp2-g21.free.fr (Postfix) with ESMTPSA id 192FC2003EF;
	Fri, 23 Sep 2022 10:28:11 +0200 (CEST)
Received: by hua (Postfix, from userid 10000)
	id AACAC22616D; Fri, 23 Sep 2022 10:28:11 +0200 (CEST)
From: philippe.coval@astrolabe.coop
To: yocto@lists.yoctoproject.org
Cc: philippe.coval.pro+meta-zephyr-lists.yoctoproject.org@gmail.com,
	Philippe Coval <philippe.coval@astrolabe.coop>
Subject: [meta-zephyr][PATCH] nrf52840-mdk-usb-dongle.conf: Add new machine
 from makerdiary
Date: Fri, 23 Sep 2022 10:27:58 +0200
Message-Id: <20220923082758.2284969-1-philippe.coval@astrolabe.coop>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Sep 2022 08:28:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58142

From: Philippe Coval <philippe.coval@astrolabe.coop>

It was tested with zephyr-openthread-rcp
along Oniro's IoT gateway blueprint

For the record deployment was done manually:

- Click on device button
- uf2conv.py "zephyr.hex" -c -f 0xADA52840
- and then copy to mounted "/dev/disk/by-label/MDK-DONGLE"

Support of unfree flashing tools might be added later (once double verifi=
ed)

Forwarded: https://lists.yoctoproject.org/g/yocto/search?q=3Dphilippe.cov=
al
Relate-to: https://gitlab.eclipse.org/eclipse/oniro-blueprints/transparen=
t-gateway/meta-oniro-blueprints-gateway/-/issues/6
Relate-to: https://wiki.makerdiary.com/nrf52840-mdk/zephyr/
Relate-to: https://gitlab.eclipse.org/pcoval/oniro-presentations/-/wikis/=
openthread
Signed-off-by: Philippe Coval <philippe.coval@astrolabe.coop>
---
 meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.=
conf

diff --git a/meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf b/=
meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf
new file mode 100644
index 0000000..214cbb8
--- /dev/null
+++ b/meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf
@@ -0,0 +1,7 @@
+#@TYPE: Machine
+#@NAME: nrf52840-mdk-usb-dongle
+
+#@DESCRIPTION: Machine configuration for makerdiary's nrf52840-mdk-usb-d=
ongle
+
+require conf/machine/include/nrf52.inc
+RCH:nrf52840-mdk-usb-dongle =3D "arm"
--=20
2.34.1


